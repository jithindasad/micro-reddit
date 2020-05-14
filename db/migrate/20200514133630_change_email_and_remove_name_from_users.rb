class ChangeEmailAndRemoveNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    rename_column :users, :email, :name
  end
end
