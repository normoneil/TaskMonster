class CreateTagnames < ActiveRecord::Migration
  def change
    create_table :tagnames do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps

    end
  end
end
