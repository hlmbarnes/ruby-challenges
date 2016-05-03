class Game 
	def initialize(rand_num)
		@rand_num = rand_num

@guesses = 1
while @done == nil do
		puts "what is your guess?"
		@randnum = gets.chomp.to_i

		
		if @randnum == @rand
			then
			@done = true
			puts "Guesses = #{@guesses}"
		else
			if @randnum > @rand 
				then
				@off = "high"
			elsif @randnum < @rand
				@off = "low"
			
		end
			puts "Wrong - try again, you are too #{@off}"
			@guesses = @guesses + 1
			@done = nil
		end
	end
end
	def user_number (n1, n2)
		puts getschomp(1..100)
	end

	def compare_number(n1, n2)
		if user_number.object_id 
	end
