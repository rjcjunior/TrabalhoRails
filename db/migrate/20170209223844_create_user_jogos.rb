class CreateUserJogos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_jogos do |t|
      t.integer :user_id
      t.integer :jogo_id

      t.timestamps
    end
  end
end
