# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 2
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner + 5}
  else
    element + 5
     end
end
p number_array


# Bonus:
=begin
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names[1][2].map! {|name| name <<"ly"}
p startup_names
=end
#Reflection
=begin
What are some general rules you can apply to nested arrays?
In the preview video for this week she goes over the importance of the different levels. If it helps to space it out, that
could be something to look out. Essentially, the rules are the same it's just looking at the different depths to the nested arrays.
What are some ways you can iterate over nested arrays?
Using each or map ( in our case map! for destructive) and flow control in order to see if the element is an array and then iterate through it as well.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We Iterated using the destructive method (!) of map. This allowed us to affect the element in the original directly. 	
	
=end