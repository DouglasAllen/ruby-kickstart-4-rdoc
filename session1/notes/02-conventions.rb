class Session01Notes
=begin rdoc
=== Conventions

  # In the notes, examples and cheatsheets provided,
  # we use a few conventions in our code to make it easy
  # to see the results of expressions.
  # To show the results of a line,
  # we use the following notation: ( sometimes )
  # 3 + 9      # => 12
  # But for these rdocs it is more like:

  3 + 9       
  # => 12
  
  my_var = 4
  my_var      
  # => 4
  
  # to help you just copy and paste into IRB.
  # But it is recommended that you type because it
  # builds memory muscles.
  #( Conventional? )
  # No. But for IRB or PRY it is easier.
  # Use the conventional way for your Ruby script files.
  # That will help you later if you forget what you did.
  # This shows what that line evaluates to, # => in IRB
  # but is just a comment for documentation purposes.
  # You would just see:
  
  5
  => 5
  
  # in the actual output most of the time.
  # You don't need to type => in except for the regex we do
  # later. If you typed in # => 5 then you will see >*
  # at the input prompt telling you that it is asking for more input.
  # You get this when building classes, methods or modules
  # or just incomplete stuff such as unclosed strings or 
  # what have you. [], {}, '', "" They come in pairs.
  # If you get stuck like this, just type 'Ctrl c' ( both keys )
  # or you may try typing in the word > inspect
  # and get => "main"
  # This is the scope that you are in
  # and will be explained in lessons to follow.
  # Sometimes you just see the result only and not
  # an IRB return prompt. =>
  # And in the case of a line, with just a variable on it,
  # will show the value that the object refers to. (reference or
  # value is debatable)

  # For more complicated output,
  # such as from a print statement,
  
  print "This is test to print."
  This is text to print.=> nil
  
  # It will be placed below the code when a script is executed.
  # ( wiki citation needed ) hi hi (means "yes yes" trivial point)

  # pry is a grat tool. You won't have most of these problems that
  # you do in irb. And if you have ansi colors enabled in your
  # console, you will see different colors for different Ruby objects.
  # Where do I get it? We will talk about gems later but for
  # now, you have Ruby right? Then you should have Rubygems.
  
  $ gem install pry
  
  # Rubygems knows about your system and results will vary.
  
  Successfully installed pry-0.9.12.2-x86-mingw32
  1 gem installed 
=end
def session1_02_conventions;end

end