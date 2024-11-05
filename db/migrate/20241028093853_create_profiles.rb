class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.decimal :mov, precision: 3, scale: 1
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
      t.references :unit, null: false, foreign_key: true
      t.references :affiliation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
