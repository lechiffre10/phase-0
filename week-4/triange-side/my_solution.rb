# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)

	if (a + b) > c && (a + c) > b && ( b +c) > a
		return true
	else
		return false
	end
end

#https://github.com/lechiffre10/phase-0/blob/master/week-4/triangle-side/my_solution.rb