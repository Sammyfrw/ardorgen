class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false, default: ""
      t.integer :age, null: false, default: 0
      t.integer :year_established, null: false, default: 0
      t.string :demonym, null: false, default: ""
      t.string :language, null: false, default: ""
      t.string :flag, null: false, default: ""
      t.text :history, null: false, default: ""
      t.timestamps null:false
    end
  end
end
