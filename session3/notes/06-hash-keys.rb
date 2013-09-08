class Session03Notes
=begin
=== Hash keys

  # Symbols are commonly used as keys because of their efficiency,
  # but you can use any object you like.

  hash           = Hash.new
  hash[0]        =  'zero'
  hash['nine']   =  9
  hash[/regex/]  =  ['array', 'of', 'strings']
  hash  # => {0=>"zero", "nine"=>9, /regex/=>["array", "of", "strings"]}
=end
def session3_06_hash_keys;end
end
