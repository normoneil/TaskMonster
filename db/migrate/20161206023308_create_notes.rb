class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :parent_id
      t.string :title
      t.string :body
      t.integer :user_id
      t.integer :category_id
      t.integer :view_id

      t.timestamps

    end
  end
end
