class CreateModifierRelationships < ActiveRecord::Migration[7.1]
  def change
    create_table :modifier_relationships do |t|
      t.references :modifier, null: false, foreign_key: true
      t.references :related_modifier, null: false, foreign_key: { to_table: :modifiers }

      t.timestamps
    end
  end
end
