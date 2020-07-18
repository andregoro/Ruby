module SobreHelper
	def rota
		rota = "/produto/incluir"
		@nome = ""
		if @produto.present?
			rota ="/produto/#{@produto.id}/salvar"
			@nome=@produto.nome
		end
		rota
	end
end
