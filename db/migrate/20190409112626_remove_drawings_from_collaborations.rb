class RemoveDrawingsFromCollaborations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :collaborations, :drawings, foreign_key: true
  end
end
