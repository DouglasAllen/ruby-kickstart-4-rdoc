class Session01Notes
=begin rdoc
=== if returns

  # You can write if statements anywhere Ruby code returns a value.

  result = if true
    "yep, it's true"
  else 
    "nope, it's not true"
  end

  result 
  # => "yep, it's true"



  # lets put that in a method
  
  def if_returns_value(bool)
    if bool
      "yep it's true"
    else
      "nope, it's not true"
    end
  end

  if_returns_value true 
  # => "yep it's true"
  
  if_returns_value false 
  # => "nope, it's not true"

  # so does unless
  
  def unless_returns_value(bool)
    unless bool
      "nope, it's not true"
    else
      "yep, it's true"
    end
  end

  unless_returns_value true
  # => "yep, it's true"
  
  unless_returns_value false  
  # => "nope, it's not true"
=end
def session1_23_if_returns_a_value;end
end
