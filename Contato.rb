class Contato
  attr_accessor :id
	attr_accessor :nome
	attr_accessor :telefone
	attr_accessor :email

	def initialize(id,nome,telefone,email)
	  @id = id
	  @nome = nome
	  @telefone = telefone
	  @email = email
	 end
	def modifica_nome(nome,nome_novo)
		@nome=nome_novo
	end
	def modifica_telefone(telefone,telefone_novo)
		@telefone=telefone_novo
	end
	def modifica_email(email,email_novo)
		@telefone=email_novo
	end
end