class CreateEntityModifers < ActiveRecord::Migration[7.1]
  def change
    create_table :entity_modifiers do |t|
      t.references :modifier, null: false, foreign_key: true
      t.references :entity, polymorphic: true, null: false

      t.timestamps
    end
  end
end
