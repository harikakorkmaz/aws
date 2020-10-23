class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :tite
      t.string :body
      t.string :image
      t.timestamps
    end
  end
end
