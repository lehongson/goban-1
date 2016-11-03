class CreateDistrics < ActiveRecord::Migration
  def change
    create_table :districs do |t|
      t.string :name
      t.integer :kind
      t.references :provincial, index: true, foreign_key: true
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
