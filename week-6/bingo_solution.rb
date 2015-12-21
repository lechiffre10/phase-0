# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.


# Release 0: Pseudocode
# Outline:
#Initialize method that takes An array consisting of Sub-Arrays (BingoBoard)

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an instance variable that returns letter from (b,i,n,g,o) and an instance variable for the number

# Check the called column for the number called.
#Iterate through array and sub arrays for the number
# If the number is in the column, replace with an 'x'
#Use case method to branch through different cases ( depending on letter generated and number)
#replace that number with "X"


# Display the board to the console (prettily)
  #display board prettily on console with "X" when required 

# Initial Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
  end
  def call
    @letter = ["B","I","N","G","O"].sample
    @number = rand(1..100)
  p "Calling #{letter}#{number}!" 
  end
  def check
    call
    case
      when @letter == "B"
        @bingo_board.map do |row|row
         row[0] = "X" if row[0] == @number 
        end
      when @letter == "I"
        @bingo_board.map do |row|row
         row[1] = "X" if row[1] == @number
      end
      when @letter == "N"
        @bingo_board.map do |row|row
         row[2] = "X" if row[2] == @number
        end
      when @letter == "G"
        @bingo_board.map do |row|row
         row[3] = "X" if row[3] == @number
        end
       when letter == "O"
        @bingo_board.map do |row|row
         row[4] = "X" if row[4] == @number
        end
    end
    @bingo_board.map{|items|p items}
  end
    
end

# Refactored Solution
class BingoBoard
  attr_reader :bingo_board,:number,:letter
  def initialize(board)
    @bingo_board = board
  end
  def call
    @letter = ["B","I","N","G","O"].sample
    @number = rand(1..100)
  p "Calling #{letter}#{number}!" 
  end
  def check
    call
    case
      when letter == "B"
        bingo_board.map do |row|row
         row[0] = "X" if row[0] == number 
        end
      when letter == "I"
        bingo_board.map do |row|row
         row[1] = "X" if row[1] == number
      end
      when letter == "N"
        bingo_board.map do |row|row
         row[2] = "X" if row[2] == number
        end
      when letter == "G"
        bingo_board.map do |row|row
         row[3] = "X" if row[3] == number
        end
       when letter == "O"
        bingo_board.map do |row|row
         row[4] = "X" if row[4] == number
        end
    end
    bingo_board.map{|items|p items}
  end
    
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
[22, 69, 75, 65, 73],
[83, 85, 97, 89, 57],
[25, 31, 96, 68, 51],
[75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check



#Reflection
=begin
 How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  It wasn't as hard as I thought it would be. Once you get the logic down and what is required, it's simply
  putting into writing. My main focus is on understanding the methods available and which ones to use first.
  This challenge helped me a lot, and really helped strengthen the knowledge of nested arrays.
What are the benefits of using a class for this challenge?
The class allows us to call a method specifically for our intention. We assign variables and methods which 
represent attributes and behaviors and it allows us to clearly structure our program accordingly. It also allows us
to access variables in another method by making in an instance variable and making use of it.
How can you access coordinates in a nested array?
By iterating through the array and then iterating through the sub array ( #each method and then #each on that array for example). In my case,
I indicated that I was iterating through the array and only accessing the index 0 items when the letter B is called.
What methods did you use to access and modify the array?
I used the non-destructive map method but then made the number equal to "X" if found in the appropriate column.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I was familiar with all the methods used in my program. The only thing that I would say I reinforced was accessing the nested arrays appropriately.
Initially, my whole column was replaced by "X" because I wasn't iterating properly but that was fixed. 
How did you determine what should be an instance variable versus a local variable?
The use of it within an instance of that class. We talk about scope when comparing both. The local variable would only be used within a given method and we don't have 
access to it outside of that method. Here, I made use of an instance variable if I deemed it necessary to access in another method.
What do you feel is most improved in your refactored solution? 
I spent a lot of time on the initial solution, and my approach often involves trying to find a "clean" way to write my code.
After a bit of research, I added the attr_reader to remove the @ from the instance variables but couldn't find other means to make it cleaner. I'm open to suggestions!
  
=end