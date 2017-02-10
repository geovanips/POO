###########################################################################
#################### NÃO ALTERE O CÓDIGO DESSE ARQUIVO ####################
###########################################################################

class ContaBancaria
  attr_accessor :saldo
  attr_accessor :numero

  def initialize(numero, saldo_inicial)
    @numero = numero
    @saldo = saldo_inicial
  end

  def sacar(valor)
    if valor <= @saldo
      @saldo = @saldo - valor
      return true
    else
      return false
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
    return true
  end

  def transferir(valor, conta_destino)
    if valor <= @saldo
      @saldo = @saldo - valor
      conta_destino.saldo = conta_destino.saldo + valor
      return true
    else
      return false
    end
  end

end

@contas = Array.new
@contas << ContaBancaria.new(1, 500)
@contas << ContaBancaria.new(2, 1000)
@contas << ContaBancaria.new(3, 2000)
@contas << ContaBancaria.new(4, 750)
@contas << ContaBancaria.new(5, 1500)

def localizar_conta(numero)
  @contas.each do |conta|
    if conta.numero == numero
      return conta
    end
  end
  return nil
end
i=1
while i=1
puts "Digite sua conta:"
conta=gets.chomp.to_i
if localizar_conta(conta)!=nil
  puts "Digite uma operacao"
  puts "1 - Ver saldo \n2 - Depositar\n3 - Sacar\n4 - Transferir"
  operacao=gets.chomp.to_i
  while operacao>4
	  puts "operacao invalida"
	  puts "Digite novamente"
	  operacao=gets.chomp.to_i
  end
  if operacao==1
    puts "Seu saldo é R$ #{localizar_conta(conta).saldo}"
    elsif operacao==2 
      puts "Quanto deseja Despositar?\n"
      dep=gets.chomp.to_i
      localizar_conta(conta).depositar(dep)
      puts "Deposito realizado com sucesso"
      puts "Saldo apos o deposito: R$ #{localizar_conta(conta).saldo}"
    elsif operacao==3 
      puts "Quanto deseja sacar?(cédulas disponíveis: R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2): "
      dinheiro=gets.chomp.to_i
      if localizar_conta(conta).saldo>=dinheiro
        valor=dinheiro
        cedulas_50 = 0
        cedulas_20 = 0
        cedulas_10 = 0
        cedulas_5 = 0
        cedulas_2 = 0

while valor != 0
  if valor >= 50
    cedulas = valor / 50
    valor = valor - (50 * cedulas)
    cedulas_50 = cedulas_50 + cedulas
  elsif valor >= 20
    cedulas = valor / 20
    valor = valor - (20 * cedulas)
    cedulas_20 = cedulas_20 + cedulas
  elsif valor >= 10
    cedulas = valor / 10
    valor = valor - (10 * cedulas)
    cedulas_10 = cedulas_10 + cedulas
  elsif valor >= 5
    cedulas = valor / 5
    valor = valor - (5 * cedulas)
    cedulas_5 = cedulas_5 + cedulas
  elsif valor >= 2
    cedulas = valor / 2
    valor = valor - (2 * cedulas)
    cedulas_2 = cedulas_2 + cedulas
  else
    puts "São permitidos apenas saques múltiplos de R$ 2, R$ 5, R$ 10, R$ 20 e R$ 50 reais!"
    break
  end
end

if valor == 0
  puts "#{cedulas_50} nota(s) de R$ 50 reais" if cedulas_50 > 0
  puts "#{cedulas_20} nota(s) de R$ 20 reais" if cedulas_20 > 0
  puts "#{cedulas_10} nota(s) de R$ 10 reais" if cedulas_10 > 0
  puts "#{cedulas_5} nota(s) de R$ 5 reais" if cedulas_5 > 0
  puts "#{cedulas_2} nota(s) de R$ 2 reais" if cedulas_2 > 0
end
        localizar_conta(conta).sacar(dinheiro)
        puts "Saque realizado com sucesso"
        puts "Saldo apos saque R$#{localizar_conta(conta).saldo}"
      else
        puts "Saldo insuficiente: Valor disponivel R$#{localizar_conta(conta).saldo}"
      end
    elsif operacao==4 
      puts "Digite o número da conta de destino: "
      contat=gets.chomp.to_i
      if localizar_conta(contat)!=nil
        puts "Digite o valor a Transferir"
        valor=gets.chomp.to_i
        localizar_conta(conta).transferir(valor, localizar_conta(contat))
        puts "Transferencia concluida"
        puts "Transferencia da conta #{conta} valor R$#{valor} para conta #{contat} "
      else
        puts "conta de destino nao localizada"
      end
  end
  i=0
else
  puts "Conta não localizada"
  i=0
end
end

