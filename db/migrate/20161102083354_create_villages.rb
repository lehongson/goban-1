class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.references :distric, index: true, foreign_key: true
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
