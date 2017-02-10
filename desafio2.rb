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
    
  end
  i=0
else
  puts "Conta não localizada"
  i=0
end
end
