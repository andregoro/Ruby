class ProdutosController < ApplicationController
before_action :carregar_produtos, except: [:incluir,:salvar]	
	def index
		# @produtos=Produto2.all
	   # resultado = (200..300).include?(230)

	   # render json: @produtos,status: 200;
	   respond_to do |format|
	   	 format.html {render show: @produtos,status: 200}
	   	# format.csv {render csv: @produtos,status:200}
	   	 format.json {render json: @produtos,status:200}
	   	 format.xml {render xml: @produtos, status: 200}
	   end
 	
 	end

	def incluir

		
		produto=Produto2.new
		#produto.id=params[:id]
		produto.nome=params[:nome]
		
		produto.save

		redirect_to "/produtos"
	end

	def alterar
		@produto=Produto2.find(params[:id])
		render :index
	end

	def excluir
		produto=Produto2.find(params[:id])
		produto.destroy
		redirect_to "/produtos"
	end

	def salvar
		produto = Produto2.find(params[:id])
		produto.nome = params[:nome]
		produto.save
		redirect_to "/produtos"	
	end

	private
		def carregar_produtos
			@produtos=Produto2.all
		end

end
