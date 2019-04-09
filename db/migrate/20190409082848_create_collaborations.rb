class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.datetime :completed_at
      t.string :image_url
      t.references :drawings, foreign_key: true
      t.references :creators, foreign_key: true

      t.timestamps
    end
  end
end
