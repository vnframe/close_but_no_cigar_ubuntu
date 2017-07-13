require "minitest/autorun"
require_relative "raffle.rb"

class Test_Raffles < Minitest::Test
	def test_winning_ticket
		my_number = "5432"
		winning_num = ["6743", "1432", "7219", "5432"]
		assert_equal(["5432"], raffle_tickets(my_number, winning_num))
	end
	def one_number_off
		my_number = "5432"
		winning_num = "1432"
		assert_equal(true, almostwin(my_number, winning_num))
	end
	
end
