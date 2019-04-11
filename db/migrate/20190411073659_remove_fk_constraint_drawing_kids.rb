class RemoveFkConstraintDrawingKids < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key(:drawings, :kids)
    add_foreign_key(:drawings, :users, column: :kid_id)
  end
end
