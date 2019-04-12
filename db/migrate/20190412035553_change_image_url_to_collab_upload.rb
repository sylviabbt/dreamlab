class ChangeImageUrlToCollabUpload < ActiveRecord::Migration[5.2]
  def change
     # rename_column :table, :old_column, :new_column
    rename_column :collaborations, :image_url, :collab_upload
  end
end
