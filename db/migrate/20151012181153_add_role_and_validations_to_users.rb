class AddRoleAndValidationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "user"
    change_column_null :users, :name, false
    change_column_null :users, :email, false
    change_column_null :users, :password_digest, false
  end
end
