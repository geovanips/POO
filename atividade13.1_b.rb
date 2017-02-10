def somatorio(num)
i=1
soma=0
 while i<=num
    if i%2==0
      soma=soma+i
    end
    i=i+1
  end
puts soma
end

somatorio(10)
