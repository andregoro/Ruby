class Produto
	def initialize(attrs=nil)
		if attrs.present?
			self.id=attrs["id"]
			self.nome= attrs["nome"]
		end
	end
	attr_accessor :id,:nome

	def salvar
		ActiveRecord::Base.connection.execute("insert into produtos1 (nome) VALUES ('#{self.nome}');")
	end

	def update
		ActiveRecord::Base.connection.execute("update  produtos1 set nome='#{self.nome}' where id=#{self.id};")
	end

	def delete

		ActiveRecord::Base.connection.execute("delete from produtos1 where id=#{self.id};")
	end
	def get!
	raise "nao pode esta em branco" if self.id.blank?
		dados = ActiveRecord::Base.connection.exec_query("select * from produtos1")	
		if dados.size > 0	
			dados=dados.first
			self.id=dados["id"]
			self.nome=dados["id"]
			#self.valor=dados["id"]
		else
			raise "Erro id #{id} nao existe"
		end
	end

	def self.busca
	    produtos = ActiveRecord::Base.connection.exec_query("select * from produtos1 where id=#{id}")	
		return produtos.map{|e| Produto.new(e) }
		# produto_convert = []
		#  produtos.each do |m| 
		#  produto_convert<<Produto.new(m)  
		# end
		# return produto_convert
	end

	def self.existe?(id)
	    dados = ActiveRecord::Base.connection.exec_query("select * from produtos1")	
		return dados.size > 0
	end
end