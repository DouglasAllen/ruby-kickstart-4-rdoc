class Session01Notes
=begin rdoc
=== String interpolation

  # Double quotes have even more power.
  # By using a special sequence of characters,
  # you can interpolate code into your String.
  # That code will be ran and its results placed into the string.

  small_number = 5
  # => 5
  
  neg_number = -97
  # => -97

  puts "1 + 3 is #{1 + 3}"
  # 1 + 3 is 4
  
  puts "The numbers are #{small_number} and #{neg_number.abs}"
  # The numbers are 5 and 97
  
  puts "They add up to #{small_number + neg_number.abs}"
  # They add up to 102
  
  
  ## Notice we can do anything inside of the #{ } we want,
  #  including referencing objects and calling methods on them.

=end
def session1_15_interpolation;end
end