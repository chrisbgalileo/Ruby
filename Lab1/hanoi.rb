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

hanoi(3,1,2,3)