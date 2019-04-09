class AddFkConstraintToDrawingsTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :drawings, :kids, index: true
  end
end
