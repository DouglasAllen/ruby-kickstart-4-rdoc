class Session01Notes
=begin rdoc
=== STDIN STDOUT

  # Programs that run in a terminal read text in, and write text out.
  # This is the common interface that allows lots of different programs to
  # interact with each other.

  # When a program outputs text, we say it sends it to standard output
  #  (stdout).
  # In the terminal, anything your program sends stdout will display on
  # your terminal.
  # For example, cat sends a file's contents to standard output,
  # echo sends its arguments to standard output.

  # When it reads text in, it gets that from standard input (stdin).
  # In the terminal, stdin is hooked up to your keyboard.
  # Whatever you type will be sent to your program's stdin.

  # Use gets to read a line from stdin
  
  user_response = gets # be careful with gets in IRB
                       # it's time to start writing 
                       # script jiles with *file_name*.rb

  # Use puts to write the line to stdout
  
  puts "You said: #{user_response}"

  # Watch out!

  # A line of text that ends in a newline. line = "Line\n"
  # When you read in the line, you also read in the newline.
  # That means: line + line # => "Line\nLine\n"
  
  # If you _actually_ wanted this: "LineLine"
  # then you need to remove the newline.
  
  # Ruby gives you a method named chomp
  # that will give you that string without the newline
  
  line = "Line\n"
  line.chomp 
  # => "Line"
  
  line       
  # => "Line\n"
  
  # It's like a cookie monster for newlines!
=end
def session1_11_stdin_and_stdout;end
end