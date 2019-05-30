class AddDescriptionToPartnership < ActiveRecord::Migration[5.2]
  def change
    add_column :partnerships, :description, :text
  end
end
