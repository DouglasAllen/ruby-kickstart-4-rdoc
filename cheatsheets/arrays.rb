class CheatSheetsArrays
=begin


= *Initializing*

  [ 1 , 2 , 3 ]        # => [1, 2, 3]
  
  Array.new(2)         # => [nil, nil]
  
  Array.new(5) { |i| i * 5 }          
  # => [0, 5, 10, 15, 20]
  
  Array.new(2) { Array.new(2) }       
  # => [[nil, nil], [nil, nil]]
  
  ary = [ ]            # => []
  
  ary = Array.new      # => []
  

== Initializing an array of strings on whitespace

  %w(this that, and the other)        
  # => ["this", "that,", "and", "the", "other"]
  

== Accessing and assigning 

  ary = %w(ruby python perl php javascript c)
  
  ary[0]               # => "ruby"
  
  ary[1]               # => "python"
  
  ary[2]               # => "perl"
  
  ary[3]               # => "php"
  
  ary[4] = 'ecmascript'
  
  ary                   
  # => ["ruby", "python", "perl", "php", "ecmascript", "c"]
  

== Negative indexes are applied from the end

  ary[-1]              # => "c"
  
  ary[-2]              # => "ecmascript"
  
  ary[-3]              # => "php"
  

== first and last
==== (unfortunately can't do ary.first = 'abc', for reasons that will become clearer when we talk more about the object model)
  
  ary.first            # => "ruby"
  
  ary.last             # => "c"


== Subarrays,
==== give a range of indexes, or a start index and length

  ary                   
  # => ["ruby", "python", "perl", "php", "ecmascript", "c"]
  
  ary[0..2]            # => ["ruby", "python", "perl"]
  
  ary[-3..-1]          # => ["php", "ecmascript", "c"]
  
  ary[2,3]             # => ["perl", "php", "ecmascript"]
  

== Replace
==== a range of indexes with elements from an array
==== (size doesn't need to match)

  ary                   
  # => ["ruby", "python", "perl", "php", "ecmascript", "c"]
  
  ary[1..2] = [9,8,7,6,5,4,3,2,1]
  ary                   
  # => ["ruby", 9, 8, 7, 6, 5, 4, 3, 2, 1, "php", "ecmascript", "c"]

== insert
  ary = Array(0..10)   # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  ary.insert(5,'five')
  ary                  # => [0, 1, 2, 3, 4, "five", 5, 6, 7, 8, 9, 10]
  

= *Sorting*
== sort
  
  before = [3,6,3,0,8,235,-3]
  after  = before.sort
  
  before               # => [3, 6, 3, 0, 8, 235, -3]
  
  after                # => [-3, 0, 3, 3, 6, 8, 235]
  

== sort!
==== on the end of a method means "watch out",
==== many methods have a "safe" version which will return a new object
==== and a "dangerous" version, which will mutate the current object.
==== (this is not it's only use, so check the docs ;)

  before = [3,6,3,0,8,235,-3]  
  before               # => [3, 6, 3, 0, 8, 235, -3]
  before.sort!
  before               # => [-3, 0, 3, 3, 6, 8, 235]
  

== Criteria
==== you can sort based on your own criteria,
==== your block must simply evaluate to -1 , 0 , or 1
==== This is the same as Java's compareTo method.
==== We have a method like that already, our spaceship operator
==== if this example is too confusing, let me know (or if it's cake,
==== you can brag)

  before = [3,6,3,0,8,235,-3] 
  before               # => [3, 6, 3, 0, 8, 235, -3]
  
  after = before.sort do |a,b|
    b <=> a   # sort such that larger elements come first
  end  
  
  after                # => [235, 8, 6, 3, 3, 0, -3]
  

== An object with a name and age
    
  class Person
    attr_accessor 'name', 'age'
    def initialize(name, age)
      @name, @age = name, age
    end
    def inspect
      "<#{name}(#{age})>"
    end
  end
  

== Whatever the block returns will be used to sort the object
    
  people = [
    Person.new( 'Ernie'    , 20 ),
    Person.new( 'Sara'     , 50 ),
    Person.new( 'Monique'  , 10 ),
    Person.new( 'Mohammed' , 60 ),
  ]
  people.sort_by { |person| person.age } 
  # => [<Monique(10)>, <Ernie(20)>, <Sara(50)>, <Mohammed(60)>]
  

= *Adding* / *Removing* / *Replacing* / *Finding* *elements*
==== (never have to write a stack again)


== append
    
  ary = [1,2,3]
  ary << 4
  ary                  # => [1, 2, 3, 4]
  
 
== push
   
  ary = [1, 2, 3, 4]   
  ary.push 5
  ary                  # => [1, 2, 3, 4, 5]

  
== pop
  
  ary = [1, 2, 3, 4, 5]  
  ary.pop              # => 5  
  ary                  # => [1, 2, 3, 4]
  

== unshift
==== if you want to push / pop from the beginning,
==== it's called unshifting and shifting 
==== to help you remember which is which,
==== it might help to associate shift with the assembly command shl
    
  ary = [1,2,3]
  ary.unshift 0
  ary                  # => [0, 1, 2, 3]
  

== shift
   
  ary = [0, 1, 2, 3] 
  ary.shift            # => 0  
  ary                  # => [1, 2, 3]
  

== Removing items
    
== delete    
    
  ary = Array(1..10)   # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  ary.delete 5
  ary                  # => [1, 2, 3, 4, 6, 7, 8, 9, 10]
  

== reject    
    
  ary = Array(1..10)             
  # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  ary.reject { |i| i % 2 == 0 }  
  # => [1, 3, 5, 7, 9]
  
== select
  
  ary = Array(1..10)             
  # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  
  ary.select { |i| i % 2 == 0 }  
  # => [2, 4, 6, 8, 10]
  

== Checking for an object
    
== include?(object)    
    
  ary = Array(3..10)    # => [3, 4, 5, 6, 7, 8, 9, 10]
  
  ary.include?(5)       # => true
  
  ary.include?(11)      # => false
  
  
== index(object)    
    
  ary.index(5)          # => 2
  
  ary.index(11)         # => nil
  

= *Iterating*

== Iterate over each element
    
== each { |item| block }
    
  sum , ary = 0 , [1,2,3]
  ary.each { |num| sum += num }
  
  sum       
  # => 6

  
== Iterating over each index , capture results in a new Array
== each_index { |index| block }
    
  results = Array.new
  %w(a b c).each_index { |i| results.push i }
  
  results   
  # => [0, 1, 2]

  
== What if you care about both elements and indexes?
== each_with_index(*args) { |obj, i| block }
    
  results = Array.new
  %w(a b c).each_with_index do |character,index|
    results.push "index #{index} has #{character}"
  end
  
  results
  # => ["index 0 has a", "index 1 has b", "index 2 has c"]
  
  
== Create a new array, where each element is derived from the original array
==== whatever the block returns
==== (its last line) will be at that index in the new array

    
== map { |item| block } 
    
  ary = [0,1,1,1,1,3]
  ary.map { |num| num * 2 }
  # => [0, 2, 2, 2, 2, 6]
  
  ary = [0,1,1,1,1,3]
  ary.map { |num| %w(zero one two three)[num] }   
  # => ["zero", "one", "one", "one", "one", "three"]
  

== Iterate over multiple elements
== each_slice (n) { ... } /* block is optional */
    
  result = []
  Array(1..10).each_slice(2) { |a, b| result << [a, b] }
  
  result
  # => [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
  

== each_cons (n) { ... } /* block is optional */
    
  result = []
  Array(1..9).each_cons(2) { |a, b| result << [a, b] }
  
  result 
  # => [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9]]
  
= *Other Built in Metods*  
== Equality
== ==
    
  [1,2,3] == [1,2,3]       # => true
  [1,2,3] == [3,2,1]       # => false
  

== Repetition
== *
    
  [1,22] * 3               # => [1, 22, 1, 22, 1, 22]
  

== Concatenation
== +
    
  [1,2] + %w(3 4)          # => [1, 2, "3", "4"]
  

== Difference
== -
    
  [1,2,3,4] - [3,5]        # => [1, 2, 4]
  

== max and min
    
  [3, 4, 13, 2, -3, 7].max # => 13
  
  [3, 4, 13, 2, -3, 7].min # => -3
  

== Intersection
== &
    
  [1,3,4] & [0,3,4,5]      # => [3, 4]
  

== Union (order is not guaranteed)
== |
    
  [1,3,4] | [0,3,4,5]      # => [1, 3, 4, 0, 5]
  

== Convert each element to a string
== and join them together
== join
    
  [1,2,3].join(' and ')    # => "1 and 2 and 3"
  

== length / size  
==== (get tired of trying to remember which is correct?
==== In Ruby, they both are ^_^)
    
  [1,2,3].length           # => 3
  
  [1,2,3].size             # => 3
  

== reverse
    
  [1,2,3].reverse          # => [3, 2, 1]
  

== transpose
    
  a = [1,2,3]
  b = %w(one two three)
  [ a , b ].transpose      # => [[1, "one"], [2, "two"], [3, "three"]]
 
== zip

  a = [1,2,3]
  b = %w(one two three) 
  a.zip b                  # => [[1, "one"], [2, "two"], [3, "three"]]
  
    
== Assigning to variables
    
  a = [1,2,3]
  num1 , num2 , num3 = a
  num1                     # => 1
  num2                     # => 2
  num3                     # => 3
  

== Removing the brackets to feed as arguments
==== splat is not a method but a term for any (*object) parameter
    
  def sum( x , y , z )
    x + y + z
  end
  a = [1,2,3]
  sum(*a)                  # => 6
  
  
=end
  def cheat_sheets_arrays;end
end