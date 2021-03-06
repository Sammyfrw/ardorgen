class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name, null: false, default: ""
      t.text :history, null: false, default: ""
      t.integer :country_id, null: false, default: ""
      t.timestamps null:false
    end
  end
end
