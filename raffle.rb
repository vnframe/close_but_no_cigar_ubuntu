def raffle_tickets(my_number, winning_num)
	matches = []
	winning_num.each_with_index do |val, index_p|
		if my_number == val
			matches << my_number
		end
	end
	matches
end

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
	almostwin
end
