class Session02Notes
=begin
=== !!!!!WATCHOUT!!!!!

  # When calling a setter method, always use an explicit
  # receiver. Otherwise it looks like you're setting a
  # local variable.

  class Flight
    
    attr_accessor 'arrival_time'
    
    def reset
      p arrival_time           # 1100    
      arrival_time = 0

      # Wait, what is this?
      p arrival_time           # 0
      p self.arrival_time      # 1100
      
      # Oh, it thought we wanted to make a local variable
      # named arrival_time
      p local_variables        # [:arrival_time]
      
      # We should have made it explicit by specifying that
      # arrival_time= is a method on self
      p self.arrival_time = 0  # 0
    end
  end
  # => nil
  
  f = Flight.new               # => #<Flight:0x14b9fe0>
  f.arrival_time = 1100    
  f.reset                      # => 0
  
=end
def session2_16_THIS_IS_GONNA_TRIP_YOU_UP;end
end