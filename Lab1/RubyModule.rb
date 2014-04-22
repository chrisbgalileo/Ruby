module RubyModule 
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
				return true
			else 
				return false
			end	
	end
	
	def cuenta_letras(s)
		h = Hash.new
		s.size.times do |x| 
			if(h.key?(s[x])) 
				h[s[x]] = h[s[x]] + 1
			else 
				h[s[x]] = 1
			end
		end
		return h 
	end
	
	def cuenta_palabras(s)
		h = Hash.new
		string = ""
		s.size.times do |x|
			if(s[x].ord == 32)
				if(h.key?(string)) 
					h[string] = h[string] + 1
				else 
					h[string] = 1
				end
			string = ""
			else
				string = string + s[x]
			end
			
		end
		if(h.key?(string)) 
			h[string] = h[string] + 1
		else 
			h[string] = 1
		end
		return h 
	end

	def hanoi(numero_de_discos, torigen, tdestino, talterna) 
		if(numero_de_discos == 1) 
			print "mueva el disco de la torre: " 
			print torigen 
			print " hacia la torre: " 
			puts tdestino
		
		else
			hanoi(numero_de_discos - 1, torigen, talterna, tdestino)
			hanoi(1, torigen, tdestino, talterna)
			hanoi(numero_de_discos -1, talterna, tdestino, torigen)
		end	
	end
	
	def sort(a, asc)
		if(asc)
			a.size.times do |x|
				a.size.times do |y|
					if (a[x] < a[y]) 
						aux = a[x]
						a[x] = a[y]
						a[y] = aux
					
					end	
				end
			end
		else
			a.size.times do |x|
				a.size.times do |y|
					if (a[x] > a[y]) 
						aux = a[x]
						a[x] = a[y]
						a[y] = aux
					end	
				end
			end
		end
		return a
	end
	
	def char_count(s, c)
		count = 0
		s.size.times do |x|
			if ( s[x] == c) 
				count = count + 1
			end	
		end	
		return count
	end
	
	def atoi(s)
		num = 0
		(s.size).times do |x|
			num = num + s[x].to_i * 10**(s.size-x-1)
		end
		return num
	end
	
end

class Test
	include RubyModule
end	

#Test
#testo = Test.new()
#puts testo.palindromo("A man, a planlala, a canal - Panama")
#puts testo.cuenta_palabras("jojojo feliz navidad jojojo")
#testo.hanoi(3,1,2,3)
#puts testo.sort([1,4,2,4,6,9], true)
#puts testo.char_count("A man, a plan, a canal - Panama", "p")
#puts testo.atoi("12234")
