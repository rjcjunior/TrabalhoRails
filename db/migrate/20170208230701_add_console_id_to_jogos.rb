class AddConsoleIdToJogos < ActiveRecord::Migration[5.0]
  def change
    add_column :jogos, :console_id, :integer
  end
end
