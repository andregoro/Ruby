
class HomeController < ApplicationController
	def index
		@teste="andes"
		
		@cliente=Cliente.new
		@cliente.nome="andre"

		@valor="jojo"
		puts @valor
#		produto=Produto.new	
	 #   produto.id=2
	#	produto.nome ="Alexandre"
	#	produto.salvar
	#	produto.update
	#	produto.delete
	#@produtos =Produto.busca

######################################################

	# produto=Produto2.new
	# produto.nome="Jose"#insere
	# produto.save

	# produto=Produto2.find(3)
	# produto.nome="Joao"#altera
	# produto.save


	#@produtos=Produto2.all #retorna tudo
	@produtos=Produto2.order("nome asc");
	end
end
