puts "media de alunos"
nota1=[]
nota2=[]
media=[]
mediat=0
cont=0
for i in 1..5
    puts "Digite a nota1(0 a 100) do aluno #{i}"
    nota1[i]=gets.chomp.to_i
    puts "Digite a nota2(0 a 100) do aluno #{i}"
    nota2[i]=gets.chomp.to_i
    media[i]=(nota1[i]+nota2[i])/2
    mediat=mediat+media[i]
    if media[i]>=60
      cont= cont + 1
    end
end
for i in 1..5
  puts "A media do aluno #{i} é #{media[i]}"
end
puts "A media da turma é #{mediat/5}"
puts "A porcentagem de alunos com nota>=60 é #{(cont*100)/5}"
