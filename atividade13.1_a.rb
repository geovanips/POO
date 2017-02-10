def divisiveis(num)
 numeros=[]
 lista=[]
 i=1
 j=1
 while i<=num
   numeros[i]=i
   if numeros[i]%3==0 or numeros[i]%5==0
     lista[j]=numeros[i]
     j=j+1
    end
    i=i+1
  end
  puts lista
end
divisiveis(20)
