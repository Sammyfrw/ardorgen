class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, null: false, default: ""
      t.string :gender, null: false, default: ""
      t.string :age, null: false, default: ""
      t.string :race, null: false, default: ""
      t.string :ethercraft, null: false, default: ""
      t.string :birthplace, null: false, default: ""
    end
  end
end
