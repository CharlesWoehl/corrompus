class UpdatePersonnalities < ActiveRecord::Migration[7.0]
  def change
    remove_column :personnalities, :skills
    remove_column :personnalities, :category
    remove_column :personnalities, :date_disponibility
    add_column :personnalities, :name , :string
  end
end
