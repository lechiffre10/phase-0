# Method to create a list
# input: This method will be used to create a variable of our list name and each item added individually to this new list
# steps: 
# create an Array for items in grocery list
# create a hash containing item name and quantity
# set default quantity for each item 
# print the list to the console 
# output: Hash

def create_list
  item_array = Array.new
  grocery_list = Hash.new(0)
  item_array.each do |item|
    grocery_list[item] += 1
  end
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# check to see IF item already in hash
#IF item is not in Hash, add item to list
#if not, add to list
# else # output: print the list to the console with added item 

def add_item(item,original_list,quantity)
	original_list[item] += quantity
end

# Method to remove an item from the list
# input: Item name  item name
  # steps: check to see if item is in the list
  #IF item is in the list than remove item from list 
# check to see if item is in the list
# if item is in list, 
  #output: Print the list to the console without Item that was removed

def remove_item(item,original_list)
	original_list.delete(item)
end
# Method to update the quantity of an item
  # input: Item name and new quantity 
  # steps: check list to see if item is in list
  #IF item is in the list update item with new quantity
  # output: Print the list to the console with updated quantity

def update_quantity(item,original_list,quantity)
	original_list[item] = quantity
end

# Method to print a list and make it look pretty
# input: Hash as argument
# steps: format text for readability
# output: List

def print_list(grocery_list)
	puts "--------------"
	grocery_list.each {|item,quantity| puts "#{item}: #{quantity}"}
	puts "--------------"
end

new_list=create_list()
add_item("Lemonade",new_list,2)
add_item("Tomatoes",new_list,3)
add_item("Onions",new_list,1)
add_item("Ice Cream",new_list,4)
remove_item("Lemonade",new_list)
update_quantity("Ice Cream",new_list,1)
puts "Here's your grocery list:\n"
print_list(new_list)
#REFLECTION BELOW
=begin
What did you learn about pseudocode from working on this challenge?
A little bit more comfortable with Pseudocode in relation to last week. I still feel like
there's more to learn and am starting to skim the surface. I'd like to be able to put down my thoughts and make them
clear and concise for the code that comes after!
What are the tradeoffs of using Arrays and Hashes for this challenge?
Well, in this challenge we ended up using both.The items on the grocery list were set up as an Array and the reasoning
is so that we can iterate through each array and then add it to our Hash. We use the Hash collection to store the item(name)
and the quantity required.
What does a method return?
Ruby evaluates the last line on the method so that's what the method returns. We define the method and then use that method to pass in arguments
in our specific case (eg: our add_item method allows us to pass in as arguments the items we want to add to our list and we then
use the print_list method to print the list)
What kind of things can you pass into methods as arguments?
Arrays,hashes, strings, integers etc...
How can you pass information between methods?
By passing one method as an argument to another method. There's also a way to do this when defining a class and methods within
that class as well.
What concepts were solidified in this challenge, and what concepts are still confusing?
I'm more comfortable with Arrays and Hashes, I need to work on my pseucode and being able to be a little bit more confident
when trying things. But I should be good by the end of this week with the concepts reviewed!
=end
