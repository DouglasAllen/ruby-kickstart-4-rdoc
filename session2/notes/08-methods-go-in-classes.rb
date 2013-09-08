class Session02Notes
=begin
=== Methods in Classes

  # When we say "abc".length, the length method
  # is stored in the String class.
  length = String.instance_method 'length'
  length # => #<UnboundMethod: String#length>


  # So if we want to make a new method on strings,
  # we would put it in the String class
  class String
    def half_length
      length / 2
    end
  end
  "abcdef".half_length # => 3
=end
def session2_08_methods_go_in_classes;end
end