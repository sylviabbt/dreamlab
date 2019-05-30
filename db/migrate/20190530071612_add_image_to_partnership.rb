class AddImageToPartnership < ActiveRecord::Migration[5.2]
  def change
    add_column :partnerships, :image, :string
  end
end
