
def reverse_string(string)
	if string.length > 0
		half = string.length / 2
		half.times do |i|
		string[i],string[string.length - i -1] = string[string.length - i - 1], string[i]
		
		end
	end
string 
end

test1 = reverse_string("hannahbanana")

print test1
