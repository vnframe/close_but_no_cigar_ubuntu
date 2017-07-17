def raffle_tickets(my_number, winning_num)
	matches = []
	winning_num.each_with_index do |val, index_p|
		if my_number == val
			matches << my_number
		end
	end
	matches
end
=begin
def almostwin(my_number, winning_num)
	correct_numbers = 0
	if my_number[0] == winning_num[0]
		correct_numbers += 1
	else 0
	end	
	if my_number[1]	== winning_num[1]
		correct_numbers += 1
	else 0
	end
	if my_number[2] == winning_num[2]
	    correct_numbers += 1
	else 0
	end
	if my_number[3] == winning_num[3]
		correct_numbers += 1
	end
	if correct_numbers == 3
	true
	end
end
=end
def almostwin(my_number, winning_num)

  correct_numbers = 0

  z = 0

 	 winning_num.length.times do

    i = 0

  		winning_num.length.times do

  			if my_number[z] == winning_num[i]

   				correct_numbers += 1

 		 	end

 			 i += 1

		end

		z += 1

	end 

  correct_numbers == winning_num.length - 1

  end

def justabout(my_number, winning_num)
	winner = []
	winning_num.each do |y|
		if almostwin(my_number, y) == true
		winner << y
		end
	end
	winner
end


def any_two(my_number, winning_num)
	winner = []
	if winning_num.include?(my_number)
			 winner << my_number
			p "Winner"
		else
			p "Better luck next time!"
	
	end
	winner
end
