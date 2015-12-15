# Your Names
# 1)Leeann Hawley 
# 2)Sabri Helal

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item, num_of_servings)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  menu.each do|food| 
    unless menu[food] != menu[item]
    raise ArgumentError.new("#{item} is not a valid input")
  end
  end
  
 
  serving_size = menu[item]
  remaining_hungry_people = num_of_servings % serving_size
  remaining_servings = num_of_servings / serving_size
  

  if remaining_hungry_people == 0    
    "Calculations complete: Buy #{remaining_servings} #{item}(s)"
  elsif remaining_hungry_people > 4
   "Calculations complete: Buy #{remaining_servings} #{item}(s),1 cake, and #{remaining_hungry_people % 5} cookie(s)"
  else remaining_hungry_people < 4
   "Calculations complete: Buy #{remaining_servings} #{item}(s) and #{remaining_hungry_people % serving_size} cookie(s)"  
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 13)
p serving_size_calc("pie", 10)
# p  serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
The importance of making your code readable especially when collaborating with others. We attempted to understand the code, and did so,
but the variable names made things very difficult to understand.
Did you learn any new methods? What did you learn about them?
Not really! Mostly just reviewing certain methods and importantly, pointing to a value of a hash by doing menu[item].
What did you learn about accessing data in hashes?
As per previous answer, the ability to access the value by key and hash name. 
What concepts were solidified when working through this challenge? 
Iteration in a hash. We also attempted to change the variables so that when the value is changed in a key the proper recalculations are done.
But thats still a work in progress!

  
=end