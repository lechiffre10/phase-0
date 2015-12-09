# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}
# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select! { |item| item.to_s.include?(thing_to_find) }
  p source
end

def my_hash_finding_method(source, thing_to_find)
  source.select! {|key,value| value == thing_to_find}
  p source.keys
end

# Identify and describe the Ruby method(s) you implemented.
# For the Array I used the select method with ! to implement changes on the original array
#The select method and passing of a block allows me to specifically look for the item that includes
# the thing_to_find and then print and returns the value of the array
#For the Hash it's similar, except when passing the block we have both the key and the value
#and we are specifically looking for the value that equals the thing_to_find but then we return an array
#by only returning the key(in this case it happens to be the name of the pet)


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
 end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# The select is pretty straight forward it allows you to select an item from an array by iterating and passing
# a block. In our case we were specifically looking for items that included the letter we are searching for. Thus, we end up
# returning that array but only with the items that include that letter.
# As for the hash, it's similar but because a hash consists of a key, value pair, we're looking for a value here. However, by using source.keys
# it actually returns an array but only of the keys from that hash ( and turns into an array).
# I used ! to directly modify the original data structure and only return a new one based on our criteria.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I was a bit familiar with the methods based on codeacademy and using select. It was actually applying the logic that I 
# worked on most. Also, the hash.keys returning an array was something that I had to research a little.
# I didn't make use of Ruby docs, most of it was actually covered in chapter 10 of the well grounded rubyist.
#
#