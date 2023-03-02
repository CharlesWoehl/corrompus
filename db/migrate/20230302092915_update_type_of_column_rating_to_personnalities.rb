class UpdateTypeOfColumnRatingToPersonnalities < ActiveRecord::Migration[7.0]
  def change
    change_column :personnalities, :rating, :float
  end
end
