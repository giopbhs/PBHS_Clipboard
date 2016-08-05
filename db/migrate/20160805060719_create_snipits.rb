class CreateSnipits < ActiveRecord::Migration
  def change
    create_table :snipits do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
