class ChangeEthercraftAndRaceToForeignKeys < ActiveRecord::Migration
  def up
    remove_column :characters, :race
    remove_column :characters, :ethercraft

    add_column :characters, :race_id, :integer, null: false, default: ""
    add_column :characters, :ethercraft_id, :integer, null: false, default: ""

    add_index :characters, :race_id
    add_index :characters, :ethercraft_id
  end

  def down
    remove_index :characters, :race_id
    remove_index :characters, :ethercraft_id

    remove_column :characters, :race_id
    remove_column :characters, :ethercraft_id

    add_column :characters, :race, :string, null: false, default: ""
    add_column :characters, :ethercraft, :string, null: false, default: ""
  end
end
