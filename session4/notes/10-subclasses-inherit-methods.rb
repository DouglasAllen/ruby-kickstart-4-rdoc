class Session04Notes
=begin
=== Inheritance subclassing

  class Superclass

    def self.class_method
      'class_method from Superclass'
    end

    def instance_method
      'instance_method from Superclass'
    end

  end

  class Subclass < Superclass
  end

  # Subclasses inherit methods from their superclass
  Subclass.class_method         # => "class_method from Superclass"
  Subclass.new.instance_method  # => "instance_method from Superclass"
=end
def session4_10_subclasses_inherit_methods;end
end
