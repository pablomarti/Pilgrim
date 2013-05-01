# This migration comes from pilgrim (originally 20130430152605)
class CreatePilgrimCities < ActiveRecord::Migration
  def change
    create_table :pilgrim_cities do |t|
      t.references :state
      t.string :name

      t.timestamps
    end
    add_index :pilgrim_cities, :state_id
  end
end
