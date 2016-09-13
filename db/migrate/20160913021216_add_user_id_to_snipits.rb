class AddUserIdToSnipits < ActiveRecord::Migration
  def change
    add_column :snipits, :user_id, :integer
  end
end
