class CreateProduto2s < ActiveRecord::Migration[5.2]
  def change
    create_table :produto2s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
