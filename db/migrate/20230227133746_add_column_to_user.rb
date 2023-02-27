class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :mail, :integer
    add_column :users, :phone, :integer
    add_column :users, :address, :string
    add_column :users, :admin, :boolean
  end
end
