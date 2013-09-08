class ChallengesSession03
=begin
===
  # Write a method, match_maker,
  # which will receive an unknown number of elements,
  # and return an array where every two elements are,
  # represented by true or false.
  # 
  # The very first parameter will not be part of this set.
  # Instead, it will tell you how to determine what their value should be.
  # If it is true, then they will be true when they are oppositely truthy.
  # If it is false, then they will be true when they are similarly truthy.
  # 
  # Examples:
  match_maker false , true  , true  
  # => [true]
  match_maker true  , true  , true   
  # => [false]
  match_maker true  , false , false   
  # => [false]
  match_maker true  , false , true   
  # => [true]
  match_maker true  , true  , false  
  # => [true]
  match_maker true  , true  , true, false, true
  # => [false, true]
  match_maker true  , true  , true, false, nil 
  # => [false, false]
  match_maker true  , true  , true, true, nil 
  # => [false, true]
  match_maker true  , true  , true, 0, nil  
  # => [false, true]
  
  Note: If you ran this in irb from this page:
  irb(main):021:0*   match_maker false , true  , true
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):21
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):022:0>   # => [true]
  irb(main):023:0*   match_maker true  , true  , true
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):23
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):024:0>   # => [false]
  irb(main):025:0*   match_maker true  , false , false
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):25
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):026:0>   # => [false]
  irb(main):027:0*   match_maker true  , false , true
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):27
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):028:0>   # => [true]
  irb(main):029:0*   match_maker true  , true  , false
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):29
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):030:0>   # => [true]
  irb(main):031:0*   match_maker true  , true  , true, false, true
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):31
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):032:0>   # => [false, true]
  irb(main):033:0*   match_maker true  , true  , true, false, nil
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):33
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):034:0>   # => [false, false]
  irb(main):035:0*   match_maker true  , true  , true, true, nil
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):35
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):036:0>   # => [false, true]
  irb(main):037:0*   match_maker true  , true  , true, 0, nil
  NoMethodError: undefined method `match_maker' for main:Object
        from (irb):37
        from C:/Ruby193/bin/irb:12:in `<main>'
  irb(main):038:0>   # => [false, true]
  irb(main):039:0*
=end
def session3_06_arguments;end
end
