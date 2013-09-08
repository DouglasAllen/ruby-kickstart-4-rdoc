class ChallengesSession05
=begin
===
  # There are many types of exceptions and errors in Ruby
  # We want to get a list of them.
  #
  # We will assume that any constant whose name contains either
  # "exception" or "error" anywhere in it, regardless of case,
  # is either an exception or an error.
  #
  # The class Module contains a list of all globally available constants.
  # Module's documentation:
  @  http://ruby-doc.org/core/classes/Module.html
  # Use the method to get an array of all the constants,
  # then use the Enumerable method called grep to extract from the Array
  # the constants that are errors and exceptions.
  #(Look through the documentation and figure out which one it is.)  
  # 
  # grep documentation:
  @  http://ruby-doc.org/core/classes/Enumerable.html#method-i-grep
  #
  # The method grep is not defined on arrays.
  # Yet I have just instructed you to use it. Why?
  # (a question to make you think, it is not tested)
  #
  # Example:
  #
  #  list_of_errors_and_exceptions 
  # => [ 'ArgumentError' , 'NoMethodError' , ... ]
  # (depending on your Ruby version,
  #  your results will either be Strings of Symbols)

  def list_of_errors_and_exceptions
  end
=end
def session5_05_exceptions_regex_reflection;end
end