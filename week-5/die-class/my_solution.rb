# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: An integer(sides)
# Output: A randomly generated number between 1 and sides as defined when instantiating.
# Steps:
# First step is to create a class and initializing which will take sides (An Integer) as a parameter
# An argument error will be raised IF the number chosen for sides is less than 1
# A method within our Die class that returns the number of sides to the die
# A method within our Die class that returns a randomly generated number between 1 and Sides(number chosen)


# 1. Initial Solution

class Die
  def initialize(sides)
   @sides = sides
    if sides < 1
   raise ArgumentError.new("Number can't be less than 1!")
   end
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..@sides)
end
end

# 3. Refactored Solution
class Die
  def initialize(sides)
   @sides = sides
   raise ArgumentError.new("Number can't be less than 1!") if sides < 1
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..@sides)
end
end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An Argument error has to do with the argument being passed. It could be an invalid argument being used or the wrong number of arguments being passed.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
It was the first time using the rand method to generate a random number in a range between 1 and the number of sides chosen.
What is a Ruby class?
When you create a class in Ruby, an object of type Class is created. Classes may then consist of variables and methods (mentioned
as behaviors and attributes in resources)
Why would you use a Ruby class?
Because certain methods can only be accessed when instantiating a class and then accessing the initialize method within that class. As an example assuming
in our case we have a class Die, we instantiate it by die= Die.new and then access the methods within that class ( sides and roll) which we wouldnt be able to
simply access without creating that class.
What is the difference between a local variable and an instance variable?
It's about scope. The local variable is only use within the scope of the function it's being used for ( a specific method for example or a loop that passes a bloc with a variable)
An instance variable is a variable that is accessed only within an instance of a class (preceded by @ symbol) and can be used anywhere within that instance of a class.
Where can an instance variable be used?
Anywhere within that class ( can be used in any method within that class)
  
=end