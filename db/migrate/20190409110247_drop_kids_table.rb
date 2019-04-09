class DropKidsTable < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key  "drawings", "kids"
    drop_table :kids
  end
end
