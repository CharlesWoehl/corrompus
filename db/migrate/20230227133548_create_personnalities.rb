class CreatePersonnalities < ActiveRecord::Migration[7.0]
  def change
    create_table :personnalities do |t|
      t.text :description
      t.string :skills
      t.string :category
      t.string :date_disponibility
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
