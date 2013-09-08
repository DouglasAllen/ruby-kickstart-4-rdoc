class ChallengesSession05
=begin
===
  # This is the same as 4:6 but now this is more comprehensive.
  #
  # There are a few nuances, though.
  # The String you return must be retained for
  # the entire lifetime of the object. 
  # The method must be able to be called multiple times.
  # The String you return should know how to add new CSS classes:
  #  each class is separated by a space.
  # If someone tries to use + or []= or * on the String,
  # you should raise a RuntimeError with a message of:
  #  "use << method instead"
  # If they try to add the same String more than once,
  # you should simply do nothing
  #
  # 0------------------------------
  #
  # EXAMPLE:
  #
  #   controller = ApplicationController.new
  #   controller.body_class                 # => ""
  #   controller.body_class << 'admin'
  #   controller.body_class                 # => "admin"
  #   controller.body_class << 'category'
  #   controller.body_class                 # => "admin category"
  #   controller.body_class << 'page' << 'order'
  #   controller.body_class                 # => "admin category page order"
  #   controller.body_class << 'category'
  #   controller.body_class                 # => "admin category page order"
  #   controller.body_class + 'landing'     
  # => #<RuntimeError: use << method instead>
  #

  class ApplicationController  
    def body_class
    end
  end
=end
def session5_01_singleton_class_string_exception;end
end
