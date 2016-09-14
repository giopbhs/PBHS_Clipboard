class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string #adds a new column to table users, called "username" and of type string
    add_index :users, :username, unique: true #first, index usersnames for quick (rapid) lookup. second, unsures usernames are always unique
  end
end
