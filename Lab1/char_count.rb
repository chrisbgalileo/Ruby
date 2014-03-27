def char_count(s, c)
	count = 0
	s.size.times do |x|
		if ( s[x] == c) 
			count = count + 1
		end	
	end	
	return count
end

char_count("A man, a plan, a canal - Panama", "a")