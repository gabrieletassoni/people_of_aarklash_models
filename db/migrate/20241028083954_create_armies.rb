class CreateArmies < ActiveRecord::Migration[7.1]
  def change
    create_table :armies do |t|
      t.string :name

      t.timestamps
    end
    add_index :armies, :name, unique: true
  end
end
