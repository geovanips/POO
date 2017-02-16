class Pessoa

  @@maioridade = 18
  attr_accessor :nome
  attr_accessor :idade

  def initialize(nome,idade)
    @nome = nome
    @idade = idade
  end

  def maioridade?
    return @idade >= @@maioridade
  end

  def self.maioridade
    return @@maioridade
  end

end
