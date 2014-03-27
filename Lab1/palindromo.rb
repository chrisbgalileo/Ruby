def palindromo(s)
	normal_string = ""
	inverse_string = ""
	s.size.times do |x|
		if ( ((65 <= s[x].ord) && (s[x].ord <= 90)) || ((97 <= s[x].ord) && (s[x].ord <= 122)) ) 
			normal_string = normal_string + s[x]
		end	
	end	
	normal_string = normal_string.downcase
	normal_string.size.times do |x|
		inverse_string = inverse_string + normal_string[normal_string.size - x - 1]
	end
		if(normal_string == inverse_string)
			#return true
			return true
		else 
			#return false
			return false
		end	
end

palindromo("A man, a plan, a canal - Panama")