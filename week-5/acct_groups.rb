=begin
#Pseudocode
Input: An Array of Strings
Steps:
-Take an Array of Strings as input
-Shuffle Strings in multiple Arrays of 4 Strings and at least 3 strings
Output: Several Arrays of at least three Strings randomly organized
=end


def acct_group(array)
  r= Random.new(1)
  array.shuffle(random:r).each_slice(4){|names| p names}
end


acct_group(["Alex", "Forger", "Alexander", "Nelson", "Karen", "Ball", "Christopher", "Bovio", "Gino", "Paul", "M.", "Capio", "Jonathan", "Chin", "Claire", "Samuels", "Ray", "Curran", "David", "Louie", "Dave", "Spivey", "Max", "Davis", "Devin", "Mandelbaum", "Afton", "Downey", "Emmanuel", "Kaunitz", "Jordan", "Fox", "Rebecca", "Gahart", "Gary", "Hodges", "Glenn", "Everett", "Golden", "Christopher", "Graf", "alanahanson", "LeeAnne", "Hawley", "Sabri", "helal", "Thomas", "Huang", "Jeff", "Schneider", "Jillian", "Dunleavy", "Kevin", "Huang", "Khamla", "Phimmachack", "KT", "Khoo", "Andrew", "s", "Kim", "Joseph", "Kim", "Michal", "Klimek", "Nathan", "knockeart", "Brigitte", "Kozena","Donald", "Lang", "Tiffany", "Larson", "Liam", "Mackey", "Johanna", "Lonn", "Charlotte", "Manetta", "Tyler", "McKenzie", "Katie", "Meyer", "Meagan", "M", "Lucas", "Nagle", "Lydia", "Nash", "Jovanka", "James", "O'Neal", "Greg", "Park", "Patrick", "Oliphant", "Peter", "Lowe", "Lauren", "Reid", "Roche", "David", "Rothschild", "Susan", "Savariar", "Kurt", "Schlueter", "Sharon", "Claitor", "Marshall", "Sosland", "Catie", "Stallings", "Steven", "King", "Eric", "Tenza", "Timur", "Catakli", "Todd", "Seller", "Dan", "Turcza", "Lindsey", "Ullman", "Raj", "Vashist", "Violet", "Dang", "Chris", "Wong", "Angelika", "Yoder", "Michelle","Zulli"])
 
#Another Solution
=begin
	
def acct_group(array)
  r= Random.new(1)
  array.shuffle!(random:r)
  groups=array.each_slice(4).map{|names| p names}
  end

=end

#Other solution- explanation
#Other solution gives pretty much the same result, but using .map and passing the bloc doesn't return nil so if we'd like to
# set some other conditions we can work from there.

#Reflection
=begin
What was the most interesting and most difficult part of this challenge?
The most interesting being the methods that exist that allow us to accomplish shuffling and then slicing the 
Array the way we want to. I'd say the most difficult is the additional options. I was able to randomize the shuffling but also
Setting up a seed so that we can always go back to a specific output( using the random generator) but when a cohort leaves it doesn't give me a minimum of 3 per group. The last group ends up being two cohorts.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Slowly but surely, it is still a work in progress that i'm hoping ill get better with practice but i feel a lot better translating my ideas into writing and then working from there.
I still find myself making changes to my code which then require me to go back in my pseudocode but itll be better with practice.
Was your approach for automating this task a good solution? What could have made it even better?
I think I kept my code fairly simple and clean which didn't require me to add a refactored solution. An input of an Array that ends up being shuffled and split is fairly easy to accomplish with this method.
Once again, my only issue has to do with having a minimum of three per group when a cohort leaves or the numbers change. I think it has to do with setting certain conditions after the .map method in my other solution.
	But ill have to work on that.
What data structure did you decide to store the accountability groups in and why?
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
The shuffle method is one i've never used before. Especially the addition of a random generator which allows me to go back to previous outputs. As for the refactored solution,
this was my first solution but i couldn't necessarily find a better way of doing this without making the code look more convulated. I'm certain there are other ways of accomplishing this task!
=end

