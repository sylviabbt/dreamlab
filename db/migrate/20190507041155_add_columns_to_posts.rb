class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
     add_column :posts, :oneliner, :string
     add_column :posts, :opening, :text
     add_column :posts, :second_image_upload, :string
     add_column :posts, :third_image_upload, :string
  end
end
