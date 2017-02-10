def imc(peso, altura)
  indmc=peso/(altura**2)
  if indmc<17
    puts "imc=#{indmc.round(2)} Muito abaixo do peso"
  elsif ((indmc>16) && (indmc<=18.49))
    puts "imc=#{indmc.round(2)} Abaixo do peso"
  elsif ((indmc>18.49) && (indmc<=24.99))
    puts "imc=#{indmc.round(2)} Peso Normal"
  elsif ((indmc>24.99) && (indmc<=29.99))
    puts "imc=#{indmc.round(2)} Um pouco acima do peso"
  elsif ((indmc>29.99) && (indmc<=34.99))
    puts "imc=#{indmc.round(2)} Um pouco Obeso"
  elsif ((indmc>34.99) && (indmc<=39.99))
    puts "imc=#{indmc.round(2)} Obesidade severa"
  end
end

imc(34, 1.62)
