puts "Programa para calcular o IMC"
puts "Digite seu peso: \n"
peso=gets.chomp.to_f
puts "Digite sua altura em metros: \n"
altura=gets.chomp.to_f
imc=peso/(altura**2)
puts "#{imc.round(2)}"
if imc<17
  puts "Muito abaixo do peso"
elsif ((imc>16) && (imc<=18.49))
  puts "Abaixo do peso"
elsif ((imc>18.49) && (imc<=24.99))
  puts "Peso Normal"
elsif ((imc>24.99) && (imc<=29.99))
  puts "Um pouco acima do peso"
elsif ((imc>29.99) && (imc<=34.99))
  puts "Obeso"
elsif imc>34.99
  puts "Obesidade severa"
end
  gets
