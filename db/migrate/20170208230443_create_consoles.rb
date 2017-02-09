class CreateConsoles < ActiveRecord::Migration[5.0]
  def change
    create_table :consoles do |t|
      t.string :nome
      t.float :preco
      t.string :midia
      t.string :fabricante
      t.date :lancamento

      t.timestamps
    end
  end
end
