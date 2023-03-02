class AddColumnIconeToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :icone, :string
  end
end
