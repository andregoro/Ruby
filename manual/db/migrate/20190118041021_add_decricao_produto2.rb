class AddDecricaoProduto2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :produto2s , :decricao,:text
  end
end
