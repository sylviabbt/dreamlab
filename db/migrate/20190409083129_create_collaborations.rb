class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.datetime :completed_at
      t.string :image_url
      t.references :drawing, foreign_key: true
      t.references :creator, foreign_key: false

      t.timestamps
    end
  end
end
