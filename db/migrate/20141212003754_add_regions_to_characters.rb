class AddRegionsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :birth_region_id, :integer, null: false, default: ""
  end
end
