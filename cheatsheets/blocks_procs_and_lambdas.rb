# http://ruby-doc.org/core/classes/Proc.html

  script = <<FILE


You might also check the notes from ch3 for of an explanation of what a block / proc is

==== Initializing A Proc
  
The differences are subtle, and I'm not even sure completely any more.
I usually go with proc or lambda, if it isn't behaving the way you like try switching them out.

    Proc.new { |param1,*params,&block| 'code goes here' }         # => #{ Proc.new { |param1,*params,&block| 'code goes here' }  }
    proc     { |param1,*params,&block| 'code goes here' }         # => #{ proc     { |param1,*params,&block| 'code goes here' } }
    lambda   { |param1,*params,&block| 'code goes here' }         # => #{ lambda   { |param1,*params,&block| 'code goes here' } }

==== Invoking a Proc  

    month = proc do |month_number| 
       %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)[ month_number-1 ]
    end#{ month = proc do |month_number| 
                %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)[ month_number-1 ]
             end }
        
    month.call 1                                                  # => #{ month.call 1  }
    month.call 2                                                  # => #{ month.call 2 }
    month[3]                                                      # => #{ month[3] }
    month[4]                                                      # => #{ month[4] }


====  Receiving a Block in a Method 
 
Place an ampersand in front of the block variable.
It will convert the block into a proc so that you can manipulate it as a variable.
In this case, it then returns the proc.

    def proc_receiver( foo , &bar )
       bar
    end
    #{ def proc_receiver( foo , &bar )
            bar
         end }
    # did not pass a block, so bar variable is nil
    proc_receiver('')                                             # => #{ proc_receiver('').inspect  }

    # Passed a block, bar points to its proc, and returns it to us.
    result = proc_receiver('') { |num| num * 100 }                # => #{ result = proc_receiver('') { |num| num * 100 } }
    result[3]                                                     # => #{ result[3]  }
    result.call 9                                                 # => #{ result.call 9  }


If you don't intend to do anything more than call the block, then you can use
block_given? to see if a block was submitted to the method and yield to invoke that block.
Think of them as private methods only visible within the scope of the method you are using them in.

    def block_receiver( foo )
      if block_given?
        yield 5 # calls the block and passes 5 into it
      else
        'no block'
      end
    end
    #{ def block_receiver( foo )
           if block_given?
             yield 5 
           else
             'no block'
           end
        end }
    block_receiver('')                                            # => #{ block_receiver('') }
    block_receiver('') { |num| num * 100 }                        # => #{ block_receiver('') { |num| num * 100 } }


==== Binding
  
Blocks and procs bind to the environment that they are defined in
other than that, and some fudgy arity rules, they are exactly the same as methods
it means that you can access elements from the surrounding environment.

    x = 'outside'                                                 # => #{ x = 'outside' }
    [1,2,3].map { x }                                             # => #{ [1,2,3].map { x } }


==== Putting a Block / Proc / Method into a Block Slot
  
    def happy()  'happy! happy! happy! :D'  end                   # => #{ def happy()  'happy! happy! happy! :D'  end }
    def sad()    'saaaaaaaad :('         end                      # => #{ def sad()    'saaaaaaaad :('         end }

    def how_i_feel
       block_given? ? "I feel \#{yield}." : "I don't know how I feel :/." 
    end#{ def how_i_feel
               block_given? ? "I feel #{yield}." : "I don't know how I feel :/." 
             end }

    # no block in the block slot
    how_i_feel                                                    # => #{ how_i_feel } 

    # custom block in the block slot
    how_i_feel { 'great :)' }                                     # => #{ how_i_feel { 'great :)' } }                   

    # place a proc into the block slot
    troublemaker = proc { 'mischievous' }                         # => #{ troublemaker = proc { 'mischievous' } } 
    how_i_feel( &troublemaker )                                   # => #{ how_i_feel( &troublemaker )  } 

    # a method into the block slot
    meth = method :happy                                          # => #{ meth = method :happy } 
    how_i_feel( &meth )                                           # => #{ how_i_feel( &meth ) } 
    how_i_feel( &method( :sad ) )                                 # => #{ how_i_feel( &method( :sad ) ) } 
                 

==== The Ampersand
  
In this context, the ampersand is a unary operator that applies to the object on its right.
It invokes the to_proc method on that object in order to get back a proc.
In Ruby 1.8, It is basically Procs and Methods that have to_proc.
In 1.9, they added a to_proc to the Symbol class.
Lets do the same thing for the String class, then we can pass a String in,
have it be converted to a proc, and placed into the block slot of the method.

    class String
      def to_proc
        proc do |object| 
          # send is a method that receives a string or symbol,
          # and invokes the method the string or symbol has named
          # in this case, we are passing ourself, so we invoke ourself on the object    
          object.send self
        end
      end
    end#{ class String
                def to_proc
                  proc do |object|      
                    object.send self
                  end
               end
             end }
      
    # first create a proc that receives an object, and invokes the upcase method on it
    upcasser = "upcase".to_proc                                   # => #{ upcasser = "upcase".to_proc }
    upcasser['Hello, world!']                                     # => #{ upcasser['Hello, world!'] } 

    # Array iterators take blocks, and pass the element from the Array to the block
    # lets use our new Symbol#to_proc                             
    %w(rise up with fists).map(&'upcase')                         # => #{ %w(rise up with fists).map(&'upcase') }

    # for comparison, some longhand versions:
    %w(rise up with fists).map { |object| object.send 'upcase' }  # => #{ %w(rise up with fists).map { |object| object.send 'upcase' } }
    %w(rise up with fists).map { |str| str.upcase }               # => #{ %w(rise up with fists).map { |str| str.upcase } }

    # a few more examples
    %w(rise up with fists).map(&'reverse')                        # => #{ %w(rise up with fists).map(&'reverse') }
    [1,4,3,-24].map(&'to_f').map(&'abs')                          # => #{ [1,4,3,-24].map(&'to_f').map(&'abs') }    
    Array.new( 5 , &'to_s' )                                      # => #{ Array.new( 5 , &'to_s' ) }

    class Integer 
      # note that this method already exists in 1.8.7+ 
      def even? # !> method redefined; discarding old even?
        self % 2 == 0
      end
    end#{ class Integer  
               def even? 
                 self % 2 == 0
               end
             end }
    [1,2,3,4,5,6,7,8,9].select(&'even?')                          # => #{ [1,2,3,4,5,6,7,8,9].select(&'even?') } 
    [1,2,3,4,5,6,7,8,9].reject(&'even?')                          # => #{ [1,2,3,4,5,6,7,8,9].reject(&'even?') }

In 1.9, this behaviour exists by default, in the Symbol class. 
(you don't have to create it like we did here)
But keep in mind, that & will pull a proc out of any object that has a to_proc method
You don't necessarily have to go defining to_proc all over the place,
methods (which, remember, are objects) already have a to_proc method defined on them
and your own classes have methods

    class Person
      attr_accessor :name
      def initialize(name) 
        @name = name 
      end
    end#{ class Person
            attr_accessor :name
            def initialize(name) 
              @name = name 
            end
          end }
    %w(Jill Jim Josh).map(&Person.method(:new))                   # => #{ %w(Jill Jim Josh).map(&Person.method(:new)) }


    class Person
      
      def visit(location)
        @visited ||= Array.new  # semantically equivalent to:  @visited = @visited || Array.new
        @visited << location
      end
      
      def visited
        @visited
      end
      
    end#{ class Person
      
            def visit(location)
              @visited ||= Array.new  
              @visited << location
            end
      
            def visited
              @visited
            end
      
          end }
    sam = Person.new 'Samantha'                                   # => #{ sam = Person.new 'Samantha'  }
    %w(Paris New\ York Sydney).each(&sam.method(:visit))           # => #{ %w(Paris New\ York Sydney).each(&sam.method(:visit)) }
    sam                                                           # => #{ sam  }

FILE

    puts script

# http://rubyquicktips.com/post/4438542511/heredoc-and-indent