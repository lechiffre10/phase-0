# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: If the check_card total is a multiple of ten, return true, else return false. 
# Steps: 
=begin
- if the input does not have 16 digits, raise an arguement error
- convert all the integers to a string and split them up.
- put all characters into an array and check for length
- select even index and double only even indexes.
- joined all numbers back into a single string and convert them back into integers
- split the integers into individual characters and add all of the numbers in the array in order to obtain a sum
- if the sum is divisible by 10, then return "true". If the number is not, return "false".
   
=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_accessor :credit_card
  attr_reader :credit,:credit_sum
  def initialize(credit_card)
    @credit_card = credit_card
    raise ArgumentError.new("Incorrect credit card number!") if credit_card.to_s.length != 16

end
  def double_digits
    @credit= @credit_card.to_s.split('').map(&:to_i)
    credit.map!.with_index{|element,index|index.even?? element *=2: element}
    
  end
  def sum_digits
    double_digits
    digit_join= credit.join.split('').map(&:to_i)
    @credit_sum=digit_join.inject{|sum,n|sum+n}
  end
  def check_card
    sum_digits
    if credit_sum % 10 == 0
      p true
    else
      p false
    end

  end
    

end



# Refactored Solution

class CreditCard
  attr_accessor :credit_card
  attr_reader :credit,:credit_sum
  def initialize(credit_card)
    @credit_card = credit_card
    raise ArgumentError.new("Incorrect credit card number!") if credit_card.to_s.length != 16

end
  def double_digits
    @credit= credit_card.to_s.split('').map(&:to_i)
    credit.map!.with_index{|element,index|index.even?? element *=2: element}
    
  end
  def sum_digits
    double_digits
    digit_join= credit.join.split('').map(&:to_i)
    @credit_sum=digit_join.inject{|sum,n|sum+n}
    
  end
  def check_card
    sum_digits
  p credit_sum % 10== 0 ? true : false
 
  end
 end







# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Initially it was just simply breaking it down method wise to do what we wanted the program to do. The methods defined were
  pretty simple as the challenge already guides you. But it's thinking okay so this is what we need and how do we approach this.
What new methods did you find to help you when you refactored?
The with index was extremely helpful to determine which index was even so that we could double each element.
What concepts or learnings were you able to solidify in this challenge?
Iteration and creating a class were solidified. It was also great making use of attr's in order to make the code look cleaner!
=end