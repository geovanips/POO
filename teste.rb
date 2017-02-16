require './Pessoa'
require './ContaBancaria'
require './AgenciaBancaria'
require './Banco'

pedro = Pessoa.new("Pedro", 30)
maria = Pessoa.new("Maria", 28)
gerente = Pessoa.new("Joao", 42)
banco = Banco.new(1,"Banco do Brasil")
agencia = AgenciaBancaria.new(10, "Agência Câmara Cascudo", gerente)
conta1 = ContaBancaria.new(1, 1000, pedro, agencia)
conta2 = ContaBancaria.new(2, 1500, maria, agencia)
agencia.adicionar_conta(conta1)
agencia.adicionar_conta(conta2)
banco.adicionar_agencia(agencia)
puts conta1.titular.nome
puts conta1.agencia.nome
conta2 = agencia.localizar_conta(2)
puts conta2.saldo
puts agencia.gerente.nome
