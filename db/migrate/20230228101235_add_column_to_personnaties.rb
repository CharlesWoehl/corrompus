class AddColumnToPersonnaties < ActiveRecord::Migration[7.0]
  def change
    add_column :personnalities, :rating, :string
    add_column :personnalities, :price, :string
  end
end
