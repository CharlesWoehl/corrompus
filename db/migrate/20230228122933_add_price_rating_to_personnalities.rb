class AddPriceRatingToPersonnalities < ActiveRecord::Migration[7.0]
  def change
    add_column :personnalities, :price, :integer
    add_column :personnalities, :rating, :integer
  end
end
