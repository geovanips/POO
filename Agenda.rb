class Agenda
	attr_accessor :contatos
	attr_accessor :numero
	attr_accessor :nome_agenda
	
	def initialize(numero,nome_agenda)
		@contatos = Hash.new
		@numero = numero
		@nome_agenda = nome_agenda
	end
	def adicionar_contato(contato)
		return @contatos[contato.id] = contato
	end
	 def remover_contato(contato)
	   if @contatos.has_key?(contato.id)
		     @contatos.delete(contato.id)
		   return true
	   else
		  return false
	   end
	end
	def buscar_por_nome(nome)
		@contatos.each do |contatos|
			if @contatos.nome == nome
				return nome
			end
		return nil
		end
	end
  	def buscar_por_nome(nome)
		@contatos.each do |contatos|
			if @contatos.nome == nome
				return nome
			end
			return nil
		end
	end
end