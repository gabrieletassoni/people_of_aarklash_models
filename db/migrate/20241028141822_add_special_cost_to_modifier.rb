class AddSpecialCostToModifier < ActiveRecord::Migration[7.1]
  def change
    add_column :modifiers, :special_cost, :string
    add_index :modifiers, :special_cost
  end
end
