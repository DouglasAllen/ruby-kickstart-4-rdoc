class ChallengesSession03
=begin
===
  # Write a method, spiral_access,
  # that takes a 2d square array (an array of arrays)
  # and a block, and calls the block for each of the elements,
  # in spiral order.
  # 
  # HINT: This method is probably best sovled recursively
  # 
  # Example:
  #
   twoD = [
     [  1 ,  2 ,  3 ,  4 , 5 ],
     [ 16 , 17 , 18 , 19 , 6 ],
     [ 15 , 24 , 25 , 20 , 7 ],
     [ 14 , 23 , 22 , 21 , 8 ],
     [ 13 , 12 , 11 , 10 , 9 ],
   ]
  order = []
  spiral_access twoD do |i|
     order << i
  end
  order
  # see Note: Have you made the method yet? Error! 
  # => [
  #     1, 2, 3, 4, 5,
  #     6, 7, 8, 9, 10,
  #     11, 12, 13, 14, 15,
  #     16, 17, 18, 19, 20,
  #     21, 22, 23, 24, 25
  #     ]
  # IRB actual output might not wrap like we have it. lol
=end
def session3_05_blocks;end
end