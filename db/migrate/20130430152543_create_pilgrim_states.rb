class CreatePilgrimStates < ActiveRecord::Migration
  def change
    create_table :pilgrim_states do |t|
      t.references :country
      t.string :name

      t.timestamps
    end
    add_index :pilgrim_states, :country_id
  end
end
