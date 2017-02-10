class RemoveTelefoneToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :telefone, :string
  end
end
