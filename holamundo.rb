=begin
	Aqui definimos la clase HolaMundo y sus metodos. 
	Las variables son de tipo globales, de instancia y locales
=end
#las variables globales se inician con el signo $
$ejemplo = "Hola Mundo Global"
class HolaMundo
	def initialize()
	end
	def saluda()
		@ejemplo = "Soy una variable de instancia"
		#primeros ejemplos
		nombre = "Hola Adan Vargas"
		puts nombre
		valorUno = 1
		valorDos = 2
		puts valorUno + valorDos

		#conversion de tipos
		stringUno = "1"
		#puts valorDos + stringUno daria error por que son de dif. tipo
		stringUno = stringUno.to_i
		#hecha la conversion se puede hacer la suma
		puts valorDos + stringUno
		#se puede usar tambien .to_f, .to_s, .to_str y .to_int

		#uso de variable global
		puts $ejemplo

		#uso de variable de instancia
		puts @ejemplo

		#concatenacion de cadena con un entero
		resultado = valorUno + valorDos
		print "La suma de 1 + 2 = #{resultado}\n"

		#concatenacion de cadenas
		cadena = "hola "
		cadena << "mundo"
		cadena.concat(33)
		print cadena

		#unir varias cadenas
		cadenaJA = "ja"*10
		print cadenaJA

		#longitud de cadena
		print cadenaJA.length

		resultado = cadenaJA <=> cadena
		puts resultado
		#es 1 si la primer cadena es mas grande y -1 si es mas pequeña que la segunda
		#hace esta comparacion con base a ascii, es sensible a mayusculas y minusculas

		#si queremos verificar que sean iguales
		#resultado = cadenaJA.casecmp(cadena)
		#dara 0 si son igual de longitud

		#escribe la cadena con la primer letra en mayuscula.
		nombre = "adan"
		nombre = nombre.capitalize
		puts nombre

		#imprime caracter por caracter y hace salto de linea
		nombre = "Bienvenido"
		nombre.each_char{|c| print c
			print "\n"}

		nombre = nombre.center(40,"-")
		print nombre

		#hora = 10
		#if hora < 12
		#	puts "Buenos dias"
		#end
		#else
		#	puts "Buenas tardes"
		#end

		#sentencia unless
		#edad = 18
		#unless edad < 18
		#	print "Eres mayor de edad"
		#end

		#resultado = case edad 
		#	when 0..11 then "Es un infante"
		#	when 12..17 then "Es un adolescente"
		#	when 18..29 then "Es un joven"
		#	when 30..59 then "Es un adulto"
		#	when 60..150 then "Es un adulto mayor"
		#	else "Error en la variable."
		#end
		#print resultado

		for i in (1..10)
			print i
			#redo se usa para repetir iteracion de ciclo
			#next se usa para pasar a la siguiente iteracion
		end

		#ciclos 

		#puts *(1..10)
		#(1..10).each_char{|i| print i}
		#1.upto(10){|i| print i}
		#10.upto(1){|i| print i}
		#10.times{|i| print i+1}

		#while
		i = 0
		while i < 5 do 
			print i
			i += 1
		end

		begin 
			print i 
			i+=1
		end while i < 5

		until i > 5 do
			print i 
			i+=1			
		end
	end
end

#puts @ejemplo daria error por que es de instancia y estamos fuera de la clase
# Creamos el objeto de la clase HolaMundo
objeto = HolaMundo.new()
objeto.saluda
gets()