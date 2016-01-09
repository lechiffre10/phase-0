# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Input: String
#Output: Reversed String
#Steps:
#First we convert the input string to an array that splits the sentence by word
#Reverse the elements in the Array
#Convert back from Array to String(which now happens to be reversed)


# Initial Solution
def reverse_words(string)
  p string.split.map!{|word| word.reverse}.join(" ")
end



# Refactored Solution
#didn't see the need to refactor here
def reverse_words(string)
  p string.split.map!{|word| word.reverse}.join(" ")
end




# Reflection
#What concepts did you review or learn in this challenge?
# This wasn't as complicated as I initially thought. It served as a refresher of built-in methods and using the map method
#to iterate and reverse each individual word in the sentence.
#What is still confusing to you about Ruby?
#I wouldn't say it's confusion I just feel like i need more practice and that's what im working on to really feel prepared.
#What are you going to study to get more prepared for Phase 1?
#Im planning on reviewing the chapters read on classes, looping, flow control etc... just to get a better feel for phase 1. 
#I'd also like to read Practical Object-Oriented Design in Ruby: An Agile Primer which is a recommended book and is supposed to be really good!