class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :tagname_id
      t.integer :note_id

      t.timestamps

    end
  end
end
