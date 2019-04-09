class AddDrawingToCollaborations < ActiveRecord::Migration[5.2]
  def change
    add_reference :collaborations, :drawing, foreign_key: true
  end
end
