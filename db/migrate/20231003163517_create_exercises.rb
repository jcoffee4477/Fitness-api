class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :user_id
      t.integer :routine_id
      t.string :name
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
