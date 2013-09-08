class Session01Notes
=begin rdoc
=== method arguments

  # You know how you and I can go to the same website,
  # but even though we both see it in our browser,
  # there is only one website?
  # 
  # Objects are the same way, when you pass one in,
  # you can access it from the variable outside
  # and inside the method, but there is still just one object.

  website = "www.ruby.com" # KAY JEWLERS? oops!
  
  def browser_goto(website)
    p website.object_id     
    "Direct your browser towards #{website}"
  end  

  # the same object id means they are the same object
  
  website = "ruby-kickstart.com"
  website.object_id       
  # => 2151945040
  
  browser_goto(website)
  # 2151945040
  # => "Direct your browser towards ruby-kickstart.com"  

  # Ruby likes to be beautiful.
  # It doesn't make you put parentheses where it
  # can figure out what you meant.
  
  browser_goto website
  # 2151945040  
  # => "Direct your browser towards ruby-kickstart.com"
=end
def session1_07_method_argument;end
end