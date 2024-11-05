class AddCharacterToUnit < ActiveRecord::Migration[7.1]
  def change
    add_column :units, :character, :boolean, default: false, null: false
  end
end
