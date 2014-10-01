class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
      t.string :evolution, null: false, default: ""

      t.timestamps null:false
    end
  end
end
