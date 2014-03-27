def atoi(s)
	num = s[s.size-1].ord
	(s.size-1).times do |x|
		num = num + (s[s.size - x - 1].ord * (10*(s.size-x)))
	end
	return num
end	

atoi("ab")