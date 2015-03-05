class CreateSolarSystem < ActiveRecord::Migration
  def change
    create_table :solar_systems do |t|
      t.string :name
      t.integer :no_stars
      t.timestamps
    end
  end  
end
