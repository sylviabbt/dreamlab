class RenameDislikeInKidsSchema < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :dislikes, :worst_things
  end
end
