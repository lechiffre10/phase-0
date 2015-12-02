```Ruby
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello #{first_name}#{middle_name}#{last_name} it's a pleasure to meet you!"

puts "What is your favorite number?"
answer= gets.chomp.to_i
answer+=1
puts "#{answer} is a bigger and better result though!"
```
=begin
How do you define a local variable?
You define a local variable as such my_variable= "text". The name of the variable can be a combination of characters but it has to start with a letter lowercap.
How do you define a method?
  You define a method as such def method(argument(s)), block of code in between and end. 
What is the difference between a local variable and a method?
A local variable is simply used to store information. What this means is that your variable will contain a string or a number whereas a method is used to accomplish something in
your program. Your method is used when "called upon" to do something.
How do you run a ruby program from the command line?
  You type ruby program_name.rb in the command line to run the program.
How do you run an RSpec file from the command line?
  You type rspec program_name.rb in the command line to run an RSpec on the file.
What was confusing about this material? What made sense?
I think it served as a refresher to what was done. I find the RSpec a bit frustrating because you have to follow exactly what is said otherwise it returns a failure.
Other than that it's a great start!

4.3.1:https://github.com/lechiffre10/phase-0/blob/master/week-4/address/my_solution.rb
4.3.2:https://github.com/lechiffre10/phase-0/blob/master/week-4/math/my_solution.rb