def lanzar_1d10
  resultado = rand(1..10)
  puts "El resultado del lanzamiento es: #{resultado}"
end



def lanzar_3d10
  dados = 3.times.map { rand(1..10) }
  dados_ordenados = dados.sort
  return dados_ordenados
end

def dado_central_3d10(dados_ordenados)
  return dados_ordenados[1]
end

def contar_ocurrencia (dados_ordenados)
  contador = Hash.new(0)
  dados.each do |dado|
    contador[dado] += 1
  end
  return contador
end

def hay_dobles (dados_ordenados)
  contador = contar_ocurrencias(dado)
  
  if contador[1] >= 2
    return "Se obtuvo un doble 1."
  elsif contador[10] >= 2
    return "Se obtuvo un doble 10."
  else
    return "No se obtuvo ni un doble 1 ni un doble 10."
  end
end

dados_ordenados = lanzar_3d10
dado_central = dado_central_3d10 (dados_ordenados)
resultados_dados = lanzar_3d10
resultado_dobles = hay_dobles (resultados_dados)


puts "Los dados ordenados son: #{resultados_dados}"
puts "El dado central es: #{dado_central}"
puts "Resultado de los dobles: #{resultado_dobles}"


