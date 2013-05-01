# This migration comes from pilgrim (originally 20130430152412)
class CreatePilgrimCountries < ActiveRecord::Migration
  def change
    create_table :pilgrim_countries do |t|
      t.string :code
      t.string :name
      t.string :continent
      t.string :region

      t.timestamps
    end
  end
end
