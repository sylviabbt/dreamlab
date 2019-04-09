class CreateDrawings < ActiveRecord::Migration[5.2]
  def change
    create_table :drawings do |t|
      t.string :status
      t.string :name
      t.string :image_url
      t.datetime :upload_at
      t.datetime :booking_at
      t.references :kids, foreign_key: true

      t.timestamps
    end
  end
end
