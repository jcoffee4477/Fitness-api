class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :exercises
    drop_table :routines
  end
end
