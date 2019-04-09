class RemoveKidsFromDrawings < ActiveRecord::Migration[5.2]
  def change
    remove_column :drawings, :kids_id
  end
end
