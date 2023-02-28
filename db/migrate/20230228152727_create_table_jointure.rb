class CreateTableJointure < ActiveRecord::Migration[7.0]
  def change
    create_table :joinskills do |t|
      t.references :personnality, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.timestamps
    end
  end
end
