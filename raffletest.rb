require "minitest/autorun"
require_relative "raffle.rb"

class Test_Raffles < Minitest::Test
	def test_winning_ticket

		my_number = "5432"
		winning_num = ["6743", "1432", "7219", "5432"]
		assert_equal(["5432"], raffle_tickets(my_number, winning_num))
	end
=begin
	def test_one_number_off
puts "I'm here"
		my_number = "5432"
		winning_num = ["1432"]
		assert_equal(true, almostwin(my_number, winning_num))
	end
=end
	def test_one_number_off

		my_number = "5432"

		winning_num = ["5431"]

		assert_equal(true, almostwin(my_number, winning_num))

	end
	def test_almost_there
		my_number = "5432"
		winning_num = ["5432", "6743", "7219", "1432"]
		assert_equal(["1432"], justabout(my_number, winning_num))
	end
	def test_any_two 
		my_number = "5432"
		winning_num = ["5432", "54321", "7219", "1432"].cycle
		assert_equal(["54321"], any_two(my_number, winning_num))

	end
end


