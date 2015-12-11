# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input? 
# An Array of numbers or strings
# What is the output? (i.e. What should the code return?) 
# An Array of most common elements
# What are the steps needed to solve the problem?

#create an empty hash
#add each element to hash as key with some default value
#count each time that each key in hash occurs in array
#set value of hash[key] to the count

# 1. Initial Solution
def mode(array)
  hash = Hash.new {|hash,key| hash[key] =0}
  array.each do |item| 
    hash[item] = array.count(item)
  end
  array2 = []
  hash.each do |k, v| 
    if v == hash.values.max
      array2 << k
    end
  end
  p array2
  end


# 3. Refactored Solution
def mode(array)
  hash = Hash.new
  array.each do |item| 
    hash[item] = array.count(item)
  end 
  var = hash.values.max
  p hash.delete_if { |k, v| v != var}.keys
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We decided to implement both an Array and a Hash in order to come up with a solution. The reasoning behind it is the following
Our input has to be an array that can consist of strings or integers but we are looking at the occurences within that Array and only returning the most frequent item within the Array.
In order to accomplish that, we used a Hash that takes in the Array and has the item as a key and its frequency as a value. Then we return the key of the hash( which ends up returning an Array)
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes, i feel like we both understood the problem rather well, and it wasn't our first time pairing so we pretty much broke down the pseudocode very well together. The more practice the better!
What issues/successes did you run into when translating your pseudocode to code?
We initially had a bit of a problem trying to get just the most frequent entry ( it kept returning the most frequent ones but for example one that would occur twice and one three times). We ended up
overcoming that and our succcess is in the act of cleaning up our code in our refactored solution. I think it looks great and uses different methods as well!
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used the each method to iterate through the content. We also used the delete_if to pass the block and iterate through keys and values to delete the values that aren't the max in our Hash. The delete if
was a little bit tricky because we had to create a new variable ( it strangely wasn't doing what we wanted when we just iterated through the values) but the each method wasn't a problem!
Overall this was a great learning experience and further solidifes my understanding of Arrays and Hashes. Hoping to get more practice to feel fully comfortable!
	
=end