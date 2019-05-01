class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :main_image_upload
      t.references :creator, foreign_key: false

      t.timestamps
    end
  end
end
