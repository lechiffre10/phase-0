#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1] hours on this challenge.

# Pseudocode

# Input: String with my name in NameData class
# Output: String with my name when calling name method on instance of Greeting class
# Steps:
# Have one class NameData with initialize method and instance variable pointing to my name
# set that as an attribute accessor
# Have a second class Greetings with initialize method that points to NameData class with name instance
#variable
# Have a second method called hello that puts String sentence with my name included.

class NameData
	attr_accessor :name
	def initialize
		@name = "Sabri"
	end
end


class Greetings
	def initialize
		@name= NameData.new
	end
	def hello
		puts "Hello #{@name.name}! How wonderful to see you today."
	end
end
greet = Greetings.new
greet.hello



# Reflection
=begin
Release 1:
What are these methods doing?
The methods are changing the initial values of age, name and occupation to new values outside of the class. They are setter methods!
How are they modifying or returning the value of instance variables?
They take in an argument and then re-write the values when they are called. In our case the setter methods are defined as
	eg: change_my_age = (new_age).
Release 2:
What changed between the last release and this release?
The code returns the same values when run however the code is different and we'll get to that in the next question.
What was replaced?
we added an attr_reader :age. This means that we dont have to define the method what_is_age with the instance variable @age. Ruby
knows what we are doing so this allows us to clean up the code in the Class.
Is this code simpler than the last?
Absolutely we have 3 less lines of code and we accomplish the same thing.
Release 3:
What changed between the last release and this release?
The output is the same on the console. We know also removed the setter method change_my_age.
What was replaced?
We added an attribute writer for :age(@age) which allows us to remove the setter method def change_my_age and clean up the code.
Is this code simpler than the last?
We're getting there.We could just do an attr_accessor but I'm assuming that's the next step. 
It's cleaner because we remove another 3 lines of code.
Reflection for last release:
What is a reader method?
It is a getter method; meaning it just reads the instance variable that was set and can do so outside the class. eg: def name @name end
What is a writer method?
It is a setter method; allows you to set or write and change the variable outside of the class! can be done using attr_writer with the variable symbol
eg: def change_name = (name) @name =name end
What do the attr methods do for you?
Depending on what you are attempting to do in the program it allows you remove unnecessary code and either write, read or both your instance variables outside of the class
Should you always use an accessor to cover your bases? Why or why not?
I think it is a good idea but it depends what you are trying to accomplish. It's important to use the appropriate attr method
Because you dont want to unnecessarily give writer access to a variable that is only being read. 
What is confusing to you about these methods?
Not necessarily confusion I just need more practice. Had a bit of trouble getting the last exercise going but not out of lack of understanding
just lack of practice!

	
=end