class CreateBuscas < ActiveRecord::Migration[5.2]
  def change
    create_table :buscas do |t|
      t.string :titulo
      t.text :conteudo
      t.string :imagem
      t.string :link_origem

      t.timestamps
    end
  end
end
