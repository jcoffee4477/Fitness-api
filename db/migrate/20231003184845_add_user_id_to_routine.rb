class AddUserIdToRoutine < ActiveRecord::Migration[7.0]
  def change
    add_column :routines, :user_id, :integer
  end
end
