def cuenta_palabras(s)
	h = Hash.new
	s.size.times do |x| 
		if(h.key?(s[x])) 
			h[s[x]] = h[s[x]] + 1
		else 
			h[s[x]] = 1
		end
	end
	puts h 
end	

cuenta_palabras("jojojo _ ?Sadoi")