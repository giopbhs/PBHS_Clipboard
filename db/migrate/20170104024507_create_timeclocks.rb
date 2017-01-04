class CreateTimeclocks < ActiveRecord::Migration
  def change
    create_table :timeclocks do |t|
      t.integer :hour_in
      t.integer :minutes_in

      t.timestamps null: false
    end
  end
end
