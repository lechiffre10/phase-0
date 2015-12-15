# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [0.5] hours on this challenge.

# Pseudocode

# Input: Array of String Letters
# Output:
#When calling Sides method return Array length (# of letters in Array)
#When calling Roll method return random String from Array
# Steps:
#Initialize labels and raise argument error if Array(labels) is empty
#Define Sides method and check length of Array
#Define Roll method and take a random sample from Array


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.empty?
  		raise ArgumentError.new("That is not a valid input!")
  	end
  end

  def sides
  	p @labels.length
  end

  def roll
  	p @labels.sample
  end
end

my_die = Die.new(["A","B","C","D","E","F"])
my_die.sides
my_die.roll

# Refactored Solution
class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("That is not a valid input!") if labels.empty?
  end

  def sides
  	p @labels.length
  end

  def roll
  	p @labels.sample
  end
end

my_die = Die.new(["A","B","C","D","E","F"])
my_die.sides
my_die.roll
# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The logic was the same. The only difference in this specific case is using a sample method instead of a rand method because of the Strings involved.
What does this exercise teach you about making code that is easily changeable or modifiable?
Essentially the logic is the same, it's the input that's taken into consideration in this case and the appropriate adjustments are method!
What new methods did you learn when working on this challenge, if any?
The sample method! I had never used it before but it worked perfectly in this case because we just want to return one letter from the Array!
What concepts about classes were you able to solidify in this challenge?
The instance variable and raising a new ArgumentError. I initially just had trouble because my IF statement was before the raise so it kept returning the error.
=end