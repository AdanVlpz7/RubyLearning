class xClass
	def initialize()
	end
	def x
		puts "x"
		def y 
			puts "y"
		end
		def z
			puts "z"
		end
	end
end
#obj = xClass.new()
#debe llamarse primero el metodo principal y despues los anidados
#obj.x
#obj.y