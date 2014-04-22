class Computer
    @@users = {}
    def initialize username, password
        @username = username
        @password = password
        
        @files = {}
    end
	
	def create nombre
		if (@files.key?(nombre))
			puts "Error"
		else
			@files[nombre] = Time.now
		end	
	end	
	
	def rm nombre
		if (@files.key?(nombre))
			@files.delete(nombre)
		else
			puts "Error archivo no existente"
		end	
	end	
	
	def ls *hash
		if (hash[0] != nil)
			if (hash[0].key?("sort"))
				if (hash[0]["sort"] ==  "desc")
					temp = @files.keys.sort.reverse
				else		
					temp = @files.keys.sort
				end
			end
		else	
			 temp = @files.keys.sort
		end
		temp.size.times do |x|
			print temp[x]
			print " created at "
			puts @files[temp[x]]
		end
				
	end
end

#Test
#computer = Computer.new("Chrisb", "achu")
#hash = Hash.new
#hash["sort"] = "desc"
#computer.create("bachos.rb")
#computer.create("lala.rb")
#computer.create("achui.rb")
#computer.rm("lala.rb")
#computer.ls(hash)	