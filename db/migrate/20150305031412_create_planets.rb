class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :km_diameter
      t.timestamps
    end
  end
end
