# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase="Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
   # puts "What's there to hate about #{thing}?"
#end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# It says 170 on the terminal but it's actually on line 17 because of we defined a method and used a loop but only one 
#end keyword.
# 3. What is the type of error message?
# a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# it says that it expects the keyword "end"
# 5. Where is the error in the code?
# After line 16
# 6. Why did the interpreter give you this error?
# Because we defined a method and used a while loop but we should use two ends one for the method and one for the loop.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# line 37
# 2. What is the type of error message?
# a NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method for Object.
# 4. Where is the error in the code?
# We should define a local variable or a method 
# 5. Why did the interpreter give you this error?
# Because we didn't define it. Either we define a variable or a method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 52
# 2. What is the type of error message?
# noMethoderror
# 3. What additional information does the interpreter provide about this type of error?
# We didn't define a method
# 4. Where is the error in the code?
# We have an object and an empty parentheses which suggest we should have an argument but we didn't define anything.
# 5. Why did the interpreter give you this error?
# Simply because we just have cartman() to define a method we have to use def cartman() end

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# line 67
# 2. What is the type of error message?
# it is an Argumenterror
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0) from errors line 71
# 4. Where is the error in the code?
# Either we had an parameter on line 67 in the def method or we remove "I hate Kyle" on line 71 when calling the method
# 5. Why did the interpreter give you this error?
# Because we are calling the method with an argument that was never defined in the method cartmans_phase

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# line 86
# 2. What is the type of error message?
# same as the previous an Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments ( 0 for 1) from error line 90.
# 4. Where is the error in the code?
# It is when we are calling the method cartman_says but with no arguments 
# 5. Why did the interpreter give you this error?
# Because we have a parameter when we define the method but no argument when calling the method



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 107
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2) from errors line 111
# 4. Where is the error in the code?
# It's actually on line 111 because we only have 1 argument when calling the method when we should have 2
# 5. Why did the interpreter give you this error?
# Because only one argument is in parentheses but when we defined the method we have two parameters

# --- error -------------------------------------------------------

 #"Respect my authoritay!" *5

# 1. What is the line number where the error occurs?
# line 126
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into FixNum
# 4. Where is the error in the code?
# We're asking 5 to be multiplied by Respect my authoritay ( a string)
# 5. Why did the interpreter give you this error?
# Because we can't have a Fixnum multiplied by a string but we can however change the order to "
#"Respect my authoritay!" * 5 which asks the string to print itself 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# we divided by zero
# 5. Why did the interpreter give you this error?
# Because we can't divide a number by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# Loading a file that doesn't exist
# 5. Why did the interpreter give you this error?
# We're asking ruby to load a file that doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
The first error was the most troublesome. It essentially asked me to look at the last line of the program despite the fact
it had to do with the loop and method error at the beginning of the problem and the line threw me off ( despite the warning!)
How did you figure out what the issue with the error was?
By going through each error to see if an end was missing somewhere and was causing this and then noticing the loop.
Were you able to determine why each error message happened based on the code?
Yes. The terminal does a pretty good job at telling you what the type and information about the error is. 
When you encounter errors in your future code, what process will you follow to help you debug?
Same process- seeing which type of error it is and going back to the line where the problem is and troubleshooting.
The process of debugging is a necessary one but i'm glad the interpreter helps figure things out!
	
=end