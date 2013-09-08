class Session04Notes
=begin
=== Inheritance overriding methods

  class Superclass

    def self.class_method
      'class_method from Superclass'
    end

    def instance_method
      'instance_method from Superclass'
    end

  end

  class Subclass < Superclass
    def self.class_method
      'class_method from Subclass'
    end
  end

  Subclass.class_method         # => "class_method from Subclass"
  Subclass.new.instance_method  # => "instance_method from Superclass"
=end
def session4_11_overriding_inherited_methods;end
end
