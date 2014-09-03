class AddImageToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :image, :string, null: false, default: ""
  end
end
