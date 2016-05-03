class Calculator
	@result = 0
	attr_accessor :number1, :number2

	def initialize(operator, number1, number2)
		@operator = operator
		@number1 = number1.to_i
		@number2 = number2.to_i
		puts "initialized"
	end 
	def check_operator
		if(@operator == "add")
			puts "tried add"
			add(@number1, @number2)

		elsif(@operator == "subtract")
			puts "tried sub"
			subtract(@number1, @number2)
		elsif(@operator == "multiply")
			puts "tried mult"
			multiply(@number1, @number2)
		elsif(@operator == "divide")
			puts "tried divide"
			divide(@number1.to_f, @number2.to_f)

		else
		puts "please use one of the following operator: add, subtract, multiply, divide"
		end
	end

	def add(n1, n2)
		@result = n1 + n2
		self
		get_result
	end

	def subtract(n1, n2)
		@result = n1 - n2
		self
		get_result
	end

	def multiply(n1, n2)
		@result = n1 * n2
		self
		get_result
	end

	def divide(n1, n2)
		@result = n1 / n2 
		self
		get_result
	end

	def get_result
		puts @result 

	end
end


puts "What would you like to do?"
operator = gets.chomp
number1 = gets.chomp
number2 = gets.chomp

calculate = Calculator.new(operator, number1, number2)
calculate.check_operator

