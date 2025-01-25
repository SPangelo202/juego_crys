def edad
  anio_y_mes = Time.now.strftime("%Y-%m")
  puts "vamos a crear tu ficha: \n 
  iniciemos con tu fecha de nacimiento \n 
  porfavor escribe en que año naciste? \n (recuerda que estamos en #{anio_y_mes} )"

  def obtener_año_nacimiento
    loop do
      año_nacimiento = gets.chomp
      # Validación del formato del año
      #^: Indica el inicio de la cadena. Es decir, el patrón debe coincidir desde el principio de la cadena.
      #\d: Representa cualquier dígito numérico (0-9).
      #{4}: Indica que el carácter anterior (en este caso, \d) debe repetirse exactamente 4 veces.
      #$: Indica el final de la cadena. Es decir, el patrón debe coincidir hasta el final de la cadena.
      if año_nacimiento =~ /^\d{4}$/
        return año_nacimiento.to_i
      else
        puts "Por favor, ingresa un año válido (4 dígitos)."
      end
    end
  end

  loop do
    año_nacimiento = obtener_año_nacimiento

    edad_actual = Time.now.year - año_nacimiento
    if edad_actual < 18
      puts "si tienes menos de 18 años te recomiendo discreción y que cierres el juego"
    elsif edad_actual < 0
      puts "inserta una edad válida por favor"
    elsif edad_actual > 100
      puts "por favor inserta una edad válida inferior a 100 años"
    else
      puts "de acuerdo, tu edad es #{edad_actual} ?   y/n "
      variableA = gets.chomp.downcase
      if variableA == 'n'
        puts "por favor vuelve a dijitar tu año de nacimiento"
      else
        puts "#{edad_actual} interesante..."
        break
      end
    end
  end
end

def caracteristicas
  puts "quieres que esta historia tenga como personaje a un masculino o femenino?  m/f "
  puts "ahora vamos a cordinar tus estadisticas para las siguientes ramas ....  \n 
  reflejos \n
  voluntad \n
  intelecto \n 
  (tienes un total de 15 puntos para repartir) \n"
  

end
caracteristicas
#Año de nacimiento
#Reflejos
#voluntad
#intelecto
#//
#habilidades
#//// (40 puntos)
#forma física
#combate
#Percepción
#subterfugio
#Interacción
#cultura
#profesión
