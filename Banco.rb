class Banco
  attr_accessor :agencia
  attr_accessor :nome
  attr_accessor :numero

  def initialize(numero, nome)
    @agencia = Hash.new
    @nome = nome
    @numero = numero
  end
  def adicionar_agencia(agencia)
   return @agencia[agencia.numero] = agencia
  end
  def remover_agencia(numero)
    if @agencia.has_key?(numero)
      @agencia.delete(numero)
      return true
    else
      return false
    end
  end
  def localizar_agencia(numero)
    return @agencia[numero]
  end
end
