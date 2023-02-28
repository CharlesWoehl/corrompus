class UpdateUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :mail
    remove_column :users, :admin
    add_column :users, :owner, :boolean, default: false
  end
end
