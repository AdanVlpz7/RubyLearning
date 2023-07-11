class Perro
	def initialize(nombre = 'sinNombre')
		@nombre = nombre
	end
	def ladrar
		return "gua gua"
	end
	def dame_nombre
		return @nombre 
	end
	#metodo accesor
	def nombre 
		return @nombre
	end
	attr_accessor :nombre #para poder modificar variable del objeto por fuera.
end

dog = Perro.new('Firulais')
puts dog.dame_nombre
#metodo singleton se asigna al objeto que sea una excepcion, por ejemplo uno que hable
dog2 = Perro.new('Boby')
def dog.hablar
	return 'Hola humano'
end #ya habla el primer perro

#clases singleton seran para objetos especiales que seran unicos, pueden basarse en otras clases
dog3 = Perro.new()
class << dog3
	def hablar
		return "hola humano"
	end
end
if dog3.respond_to?(:hablar) then
	puts dog.hablar
else 
	puts "este perro no sabe hablar"
end
puts dog3.hablar
gets()

#metodos accesorios
dog4 = Perro.new("Frida")
