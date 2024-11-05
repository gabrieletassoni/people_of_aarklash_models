class CreateAffiliations < ActiveRecord::Migration[7.1]
  def change
    create_table :affiliations do |t|
      t.string :name
      t.references :army, null: false, foreign_key: true                                                                                                                              

      t.timestamps
    end                                                                                                                                                                                                                                                   
    add_index :affiliations, [ :name, :army_id ], unique: true
  end
end
