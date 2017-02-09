class CreateJogos < ActiveRecord::Migration[5.0]
  def change
    create_table :jogos do |t|
      t.string :nome
      t.float :preco
      t.string :estilo
      t.string :produtora

      t.timestamps
    end
  end
end
