puts "Opiniao do filme O senhor dos aneis "
idade = []
opiniao = []
cont = 0
regular = 0
bom = 0
media = 0
for i in 1..20
  puts "Digite sua idade: "
  idade[i] = gets.chomp.to_i
  puts "Digite sua opiniao: 3-execelente,2-bom,1-regular"
  opiniao[i] = gets.chomp.to_i
  if opiniao[i]==3
    media=media+idade[i]
    cont=cont + 1
  elsif opiniao[i]==1
    regular=regular + 1
  elsif opiniao[i]==2
     bom=bom + 1
  end
end
puts "A media de idade é #{media/cont}"
puts "A quantidade de regular é #{regular}"
puts "A porcentagem de bom é #{(bom*100)/20}"
