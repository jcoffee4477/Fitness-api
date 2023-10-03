class AddWorkoutToRoutines < ActiveRecord::Migration[7.0]
  def change
    add_column :routines, :workout, :string
  end
end
