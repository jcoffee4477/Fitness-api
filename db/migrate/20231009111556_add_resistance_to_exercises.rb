class AddResistanceToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :resistance, :string
  end
end
