class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :course_id
      t.timestamps
    end

    add_index :photos, :course_id
  end
end
