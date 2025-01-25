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



def identidad
  puts "ahora vamos a crear tu personaje, por favor ingresa tu nombre"
  nombre = gets.chomp
  puts "tu nombre es #{nombre} ?  y/n"
  variable_nombre = gets.chomp.downcase
  if variable_nombre == 'n'
    puts "por favor vuelve a dijitar tu nombre"
  else
    puts "tu nombre es #{nombre} interesante..."
  end
  loop do
    puts "quieres que esta historia tenga como personaje a un masculino o femenino?  m/f "
    genero = gets.chomp.downcase
    if genero == 'm' || genero == 'f'
      puts "tu personaje es #{genero == 'm' ? 'masculino' : 'femenino'}"
      break
    else
      puts "por favor selecciona una opción válida"
    end
  end
  loop do
    puts "tu personaje es heterosexual o homosexual?  hetero/homo"
    orientacion = gets.chomp.downcase
    if orientacion == 'hetero' || orientacion == 'homo'
      puts "tu personaje es #{orientacion == 'hetero' ? 'heterosexual' : 'homosexual'}"
      break
    else
      puts "por favor selecciona una opción válida"
    end

  end
end



def caracteristicas
  puts "ahora vamos a cordinar tus estadisticas para las siguientes ramas ....  \n 
   reflejos \n
    voluntad \n
    intelecto \n 
   (tienes un total de 15 puntos para repartir) \n"
  puntos = 15
  puts "cuantos puntos quieres asignar a reflejos? (tienes #{puntos} puntos)"
  reflejos = gets.chomp.to_i
  puts "cuantos puntos quieres asignar a voluntad? (tienes #{puntos - reflejos} puntos)"
  voluntad = gets.chomp.to_i
  puts "cuantos puntos quieres asignar a intelecto? (tienes #{puntos - reflejos - voluntad} puntos)"
  intelecto = gets.chomp.to_i
  total = reflejos + voluntad + intelecto
  if total > 15
    puts "has asignado mas de 15 puntos, por favor vuelve a intentarlo"
    caracteristicas
  elsif total < 15
    puts "has asignado menos de 15 puntos, por favor vuelve a intentarlo"
    caracteristicas
  else
    puts "tus estadisticas son: \n
    reflejos: #{reflejos} \n
    voluntad: #{voluntad} \n
    intelecto: #{intelecto} \n
    "
  end
end
 

def habilidades
  puts "vamos a darle nombre a tus habilidades \n"
  puts "por favor ingresa el nombre de tu primera habilidad (1/7 forma física)"
  nombre_forma_fisica = gets.chomp
  puts "por favor ingresa el nombre de tu segunda habilidad (2/7 combate)"
  nombre_combate = gets.chomp
  puts "por favor ingresa el nombre de tu tercera habilidad (3/7 percepción)"
  nombre_percepcion = gets.chomp
  puts "por favor ingresa el nombre de tu cuarta habilidad (4/7 subterfugio)"
  nombre_subterfugio = gets.chomp
  puts "por favor ingresa el nombre de tu quinta habilidad (5/7 interacción)"
  nombre_interaccion = gets.chomp
  puts "por favor ingresa el nombre de tu sexta habilidad (6/7 cultura)"
  nombre_cultura = gets.chomp
  puts "por favor ingresa el nombre de tu séptima habilidad (7/7 profesion)"
  nombre_profesion = gets.chomp
  puts "por ultimo vamos a asignar puntos a tus habilidades \n
  tienes 40 puntos para repartir en las siguientes ramas \n
  forma física \n
  combate \n
  percepción \n
  subterfugio \n
  interacción \n
  cultura \n
  profesion \n"
  puntos = 40
  forma_fisica = 0
  combate = 0
  percepcion = 0
  subterfugio = 0
  interaccion = 0
  cultura = 0
  profesion = 0
  loop do
    puts "cuantos puntos quieres asignar a forma física? (tienes #{puntos} puntos)"
    forma_fisica = gets.chomp.to_i
    if forma_fisica < 0 or forma_fisica > 40
      puts "por favor inserta un número válido"
    else
     break
    
    end
  end
  varableb = puntos - forma_fisica
  loop do
    puts "cuantos puntos quieres asignar a combate? (tienes #{varableb} puntos)"
    combate = gets.chomp.to_i
    if combate < 0 or combate >varableb
     puts "por favor inserta un número válido"
    else
     break
    end
  end
  varableb = puntos - forma_fisica - combate
  loop do
    puts "cuantos puntos quieres asignar a percepción? (tienes #{varableb} puntos)"
    percepcion = gets.chomp.to_i
    if percepcion < 0 or percepcion > varableb
     puts "por favor inserta un número válido"
    else
      break
    end
  end
  varableb = puntos - forma_fisica - combate - percepcion
  loop do
    puts "cuantos puntos quieres asignar a subterfugio? (tienes #{varableb} puntos)"
    subterfugio = gets.chomp.to_i
    if subterfugio < 0 or subterfugio > varableb
     puts "por favor inserta un número válido"
    else
     break
    end
  end
  varableb = puntos - forma_fisica - combate - percepcion - subterfugio
  loop do
    puts "cuantos puntos quieres asignar a interacción? (tienes #{varableb} puntos)"
    interaccion = gets.chomp.to_i
    if interaccion < 0 or interaccion > varableb
     puts "por favor inserta un número válido"
   else
      break
    end
  end
  varableb = puntos - forma_fisica - combate - percepcion - subterfugio - interaccion
  
  loop do
    puts "cuantos puntos quieres asignar a cultura? (tienes #{varableb} puntos)"
    cultura = gets.chomp.to_i
    if cultura < 0 or cultura > varableb
     puts "por favor inserta un número válido"
    else
     break
    end
  end
  varableb = puntos - forma_fisica - combate - percepcion - subterfugio - interaccion - cultura

  loop do
    puts "cuantos puntos quieres asignar a profesion? (tienes #{varableb} puntos)"
    profesion = gets.chomp.to_i
    if profesion < 0 or profesion > varableb
      puts "por favor inserta un número válido"
    else
      break
    end
  end
  if varableb == 0
    puts "has asignado menos de 40 puntos, por favor vuelve a intentarlo"
    habilidades
  else
    puts "tus habilidades son: \n
     #{nombre_forma_fisica}: #{forma_fisica} (forma física)\n
     #{nombre_combate}: #{combate} (combate) \n
     #{nombre_percepcion}: #{percepcion} (percepción) \n
     #{nombre_subterfugio}: #{subterfugio} (subterfugio) \n
     #{nombre_interaccion}: #{interaccion} (interacción) \n
     #{nombre_cultura}: #{cultura} (cultura) \n
     #{nombre_profesion}: #{profesion} (profesion) \n
    "
  end
end

habilidades



