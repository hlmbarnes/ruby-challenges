class Bank_account

	attr_accessor :balance

	def initialize(balance)
		$balance = balance
		puts "initialized" 
		
	end

	def check_transaction(transaction)
			if(transaction == "check_balance")
				get_balance 
			elsif(transaction == "withdraw")
				puts "How much would you like to #{transaction}?"
				@amount = gets.chomp
				withdraw(@amount)
			elsif(transaction == "deposit")
				puts "How much would you like to #{transaction}?"
				@amount = gets.chomp
				deposit(@amount)
			else
			puts "please use one of the following transactions: check_balance, withdraw, deposit"
			end
		end

		def check_balance
			get_balance
			self
		end

		def deposit(n1)
				$balance = $balance + n1.to_f
				self
				# get_balance
				get_balance
		end

		def withdraw(n1)

				$balance = $balance - n1.to_f
				self
				get_balance
		end

		def get_balance
		puts $balance
		puts "Are you done?"
		end
end



money = Bank_account.new(3333)
@check = nil
while @check == nil do
	puts "What would you like to do?"
	transaction = gets.chomp
	money.check_transaction(transaction)
	@choice = gets.chomp
	if @choice ==  "yes"

		@check = true
	end
end

