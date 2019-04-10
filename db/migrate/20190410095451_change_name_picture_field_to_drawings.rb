class ChangeNamePictureFieldToDrawings < ActiveRecord::Migration[5.2]
  def change
    rename_column :drawings, :image_url, :image
  end
end
