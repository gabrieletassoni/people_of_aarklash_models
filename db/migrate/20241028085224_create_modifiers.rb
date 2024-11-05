class CreateModifiers < ActiveRecord::Migration[7.1]
  def change
    create_table :modifiers do |t|
      t.string :name
      t.decimal :mov, precision: 3, scale: 1, default: 0.0
      t.integer :ini, default: 0
      t.integer :att, default: 0
      t.integer :str, default: 0
      t.integer :def, default: 0
      t.integer :res, default: 0
      t.integer :aim, default: 0
      t.integer :cou, default: 0
      t.integer :fea, default: 0
      t.integer :dis, default: 0
      t.integer :pow, default: 0
      t.integer :rank, default: 0
      t.integer :wounds, default: 0
      t.integer :force, default: 0
      t.integer :cost, default: 0

      t.timestamps
    end
    add_index :modifiers, :name, unique: true
  end
end
