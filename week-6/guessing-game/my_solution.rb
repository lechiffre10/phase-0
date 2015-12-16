# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An Integer as the answer to the guessing game
# Output: Depending on the guess either: 
# :high if the guess is higher than the answer and false 
# :low if the guess is lower than the answer and false
# :correct if the guess is equal to the answer and true
# Steps:
#First step is to initialize the class GuessingGame which takes in the Integer as an argument
#First method will be our guess method which takes in the guess integer as an argument and returns
# either correct,high or low based on our guess argument compared to the answer
# Second method is our Solved? method which returns true if the guess is equal to the answer or false
# if it doesn't!


# Initial Solution

class GuessingGame
	def initialize(answer)
		@answer = answer
	end
	def guess(guess)
		@guess = guess
		return :high if guess > @answer
		return :correct if guess == @answer
		return :low if guess < @answer
	end
	def solved?
	@guess == @answer
	end
end


# Refactored Solution
class GuessingGame
	def initialize(answer)
		@answer = answer
	end
	def guess(guess)
		@guess = guess
		return :high if guess > @answer
		return :correct if guess == @answer
		return :low if guess < @answer
	end
	def solved?
	@guess == @answer
	end
end
# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	The instance variables represent characteristics, or attributes, of an Object. For example, if we are talking about
	a Ticket class then the attributes could be venue or date. The behaviors( or methods in our case) represent
		how that object behaves when we call a method. In essence, each method can comprise of a local or instance variable
		that corresponds to how our object reacts when we call the method.
When should you use instance variables? What do they do for you?
	Instance variables are used for the instance of a class. If you're planning on making use of a variable in several methods
	within a given instance of a class than it would make sense to make use of it!
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control would be the use of branching in this case with the IF statements. Didn't really have trouble as it was pretty straightforward
the only struggle was with the last method and using another instance variable of @solved.
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Because symbols are unique and immutable. When you use a symbol it generates a specific ID for that symbol and it is unique.
If you use a String it generates an object id but let's say you reproduce the same String it won't exactly be the same.A Symbol in our case allows
	to keep it unique. I also believe that when your code is larger and more complex the use of symbols is quicker as Ruby doesn't have to look through
	it's library to look for it( as opposed to a new object ID being recreated).
	
=end