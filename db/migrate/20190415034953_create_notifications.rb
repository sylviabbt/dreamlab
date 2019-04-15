class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.bigint :kid_id, null: false
      t.bigint :creator_id, null: false
      t.string :content, null: false
      t.string :receiver, null: false

      t.timestamps
    end
  end
end
