class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.string :name
      t.references :army, null: false, foreign_key: true

      t.timestamps
    end
    add_index :units, :name, unique: true
  end
end
