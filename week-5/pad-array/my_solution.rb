# Pad an Array

# I worked on this challenge [by myself, with: Dave Spivey ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#Input for each method will be an Array, a minimum size integer and an optional argument ( String or Integer)
# What is the output? (i.e. What should the code return?)
#Output for destructive method will be original Array modified by added value
#Output for non-destructive method will be a new Array modified by added value
# What are the steps needed to solve the problem?

#Check length of input array
#IF larger or equal to minimum size, return array
# WHILE smaller,creating new indexes with pad, each time checking if min length is met
# return array with padded value

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array << value
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array= array.map{|x| x}
  
  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array << value
    end
  end
  new_array
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array= array.map{|x| x}
  
  if new_array.length >= min_size
    return new_array
  else
    while new_array.length < min_size
      new_array << value
    end
  end
  new_array
end


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
Yes we were able to do so by initially getting the logic part of our problem written down and working from there.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
The pseudocode helped us understand the logic involved in resolving the problem. We then broke it down by methods that are destructive
and non-destructive to define each method.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
All but one! The non-destructive one initially failed because the returning value was the original array instead of a new one ( which is destructive). We set a new variable that
was equal to the original array but with the method .map ( which creates a new array). The rest passed the test without any issues.	
When you refactored, did you find any existing methods in Ruby to clean up your code?
Our code looked pretty clean so finding something specific to clean it up was a bit hard due to the logic part of our problem. We managed to apply methods that are both destructive and non-destructive
The push method for the first method allows us to push a value directly to the original array and return that. The second, with .map, allows us to create a new array with the values we want.
How readable is your solution? Did you and your pair choose descriptive variable names?
I think it looks great. My pair was a big help and seemed to understand the problem very well so the variables are very clear and descriptive of whats required.
What is the difference between destructive and non-destructive methods in your own words?
Destructive would mean that you are directly manipulating the original array for example if you want a non-destructive array you would use .map to return a new array. But the use of .map! ( the ! symbol)
would imply that you want to influence the original array directly and return that instead.
=end
