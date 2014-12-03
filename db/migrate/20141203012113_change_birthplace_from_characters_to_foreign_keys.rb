class ChangeBirthplaceFromCharactersToForeignKeys < ActiveRecord::Migration
  def up
    remove_column :characters, :birthplace
    add_column :characters, :birthplace_id, :integer, null: false, default: ""
    add_index :characters, :birthplace_id
  end

  def down
    remove_index :characters, :birthplace_id
    remove_column :characters, :birthplace_id
    add_column :characters, :birthplace, :string, null: false, default: ""
  end
end
