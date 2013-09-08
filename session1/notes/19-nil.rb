class Session01Notes
=begin rdoc
=== nil

  # There is a special object named nil
  
  nil.class 
  # => NilClass

  # It's the object you use when you need to represent
  # that you don't have an object for!
  
  array = [1,5,7]
  array.find { |number| number * 2 == 10 } 
  # => 5
  
  array.find { |number| number * 2 == 11 } 
  # => nil
=end
def session1_19_nil;end
end
