# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
	return true
  elsif year % 400 == 0
	return true 
  else
  	return false
  end
end

#https://github.com/lechiffre10/phase-0/blob/master/week-4/leap-years/my_solution.rb

