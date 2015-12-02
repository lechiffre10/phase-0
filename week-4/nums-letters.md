##What does puts do?
Puts command returns nil and prints the output in the terminal on a new line ( as opposed to Print which is on the same line)
##What is an integer? What is a float?
An integer is a number without any decimal points and a float is a number with decimal points ( eg: 5 is an integer and 5.5 is a float)
##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
When you divide using integer arithmetic the computer will provide an integer answer. For example, if your answer would normally consist of decimals, it will only print an integer answer and will round down to the nearest answer. If you divide using a float, you get a float answer. A simple way of looking at it is by example. Assuming you go to a store and you only have 20$ on you. Let's assume each item costs 15$ in the store, so how many items can you purchase? (20/15) =1.33; the answer is 1. You can't purchase 33% of another item. The principle is the same with Integer arithmetic.

```Ruby

Hours = 24 *365
Decade= (3650 * 24) * 60

puts "#{Hours} Hours in a year"
puts "#{Decade} Minutes in a Decade"

```
##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby has built in methods for handling artihmetic such as addition, substraction, multiplication and division of numbers ( and some others). One simply has to use integers or floats with +,-,*,/ signs in order to get ruby to do the grunt of the work.
##What is the difference between integers and floats?
Integers are numbers without decimal points and floats are numbers with decimal points. The answer provided will vary depending on integers or floats used.
##What is the difference between integer and float division?
As explained at the top of this reflection, the answer provided will vary if you use an integer or float. If you use integers, Ruby will round the answer down to the nearest Integer as opposed to giving the exact answer.
##What are strings? Why and when would you use them?
A string could be a sequence of characters or even integers or floats but used as text instead of actual numbers. A string in Ruby is between quotation marks "" ( or '') and is used in variables or to output text in the terminal.
##What are local variables? Why and when would you use them?
That is defined in the scope of your program. A local variable is used only in a specific function and no longer takes up memory once its block of code is run. Global variables on the other hand are established at the top of the program and run even when no longer used (take up more memory). We use local variables for a specific function in a block of code and it can be easier to trace back bugs and also avoids unnecessary memory use.
##How was this challenge? Did you get a good review of some of the basics?
It was great! loving the book so far and find it very helpful. Still need to brush up on Ruby that was learned before starting DBC but shouldn't be too long before i'm up and running again!


4.2.1 :https://github.com/lechiffre10/phase-0/blob/master/week-4/defining-variables.rb
4.2.2 : https://github.com/lechiffre10/phase-0/blob/master/week-4/simple-string.rb
4.2.3: https://github.com/lechiffre10/phase-0/blob/master/week-4/basic-math.rb

