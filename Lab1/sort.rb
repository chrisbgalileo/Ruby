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

sort([1,4,2], false)	