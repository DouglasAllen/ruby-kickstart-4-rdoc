class ChallengesSession03
=begin
===
  # Ask Josh if you can just use IRB or PRY at first.
  # For this problem, you will need to know how to use a linked list.
  # 
  # A linked list is like a train, each car is connected to the next.
  # Then you just keep track of the engine.
  # You know that the caboose has no more cars behind it. (do you?)
  # 
  # Let us implement our linked list with hash tables.
  # So in a linked list, you keep track of the first hash in the list.
  # Usually it is called the head. The head points to the node after it.
  # Similarly, the node after that, and every other node in the list
  # all point to the node after themselves.
  # The last node is the caboose and points to nil.
  # 
  head = { :data => 1, :next => nil }
  head = { :data => 2, :next => head }
  head                                    
  # => {:data=>2, :next=>{:data=>1, :next=>nil}}
  head = { :data => 3, :next => head }
  head                                    
  # => {:data=>3, :next=>{:data=>2, :next=>{:data=>1, :next=>nil}}}
  # 
  # See? Each one just points to the next one after himself.
  # Then you can say things like:
  head[:data]                 
  # => 3
  head[:next][:data]          
  # => 2
  head[:next][:next][:data]   
  # => 1
  # 
  # ===========
  # 
  # Now that we know what a linked list is, 
  # let us write a function named middle, which takes a linked list,
  # and returns the data halfway down the list.
  # 
  # EXAMPLES:
  head = { :data => 1, :next => nil }
  middle head                             
  # => 1
  head = { :data => 2, :next => head }
  middle head                             
  # => 1
  head = { :data => 3, :next => head }
  middle head                             
  # => 2
  head = { :data => 4, :next => head }
  middle head                             
  # => 2
  head = { :data => 5, :next => head }
  middle head                             
  # => 3
  head = { :data => 6, :next => head }
  middle head                             
  # => 3
=end
def session3_15_hash;end
end