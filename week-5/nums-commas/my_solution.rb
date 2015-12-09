# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

#input: Integer
#steps:
#CONVERT Integer to a String and add to container
#Reverse order of String
#EACH String length that is more than 3 characters add a comma after each 3 characters from Right to Left.
#Reverse String again 
#output: Integer as a String seperated by comma


# 1. Initial Solution
def separate_comma(integer)
  string_array = integer.to_s.split("").reverse
p string_array.each_slice(3).map{|array|array.join}.join(",").reverse
end


# 2. Refactored Solution
def separate_comma(integer)
  string_array = integer.to_s.split("").reverse
p string_array.each_slice(3).map(&:join).join(",").reverse
end

separate_comma(50000)



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I initially had trouble writing down the pseucode and ended up having a lot of if statements. What i did afterwards
was just look at the general English rule for commas and numbers. I found the general guideline is to add a comma after three digits
but from RIGHT to LEFT. So i applied that logic to the problem.
Was your pseudocode effective in helping you build a successful initial solution?
At first it contained a lot of if statements and after starting to write the code I ended up realizing it was going nowhere so i simplified the logic.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
The map method was the one that I had to dive into to apply here as well as the each_slice to break it down for each 3 characters. Once I refactored I applied the &:join to pass the bloc and make it more readable as opposd to the original solution
How did you initially iterate through the data structure?
Using the Map method for both the initial and refactored solution ( it was hard to find a way to refactor my initial solution )
Do you feel your refactored solution is more readable than your initial solution? Why?
I do, not by much but the &:join makes it look cleaner and more readable than the original solution!
=end	

