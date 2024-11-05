class AddCharacterCostToModifier < ActiveRecord::Migration[7.1]
  def change
    add_column :modifiers, :character_cost, :integer
  end
end
