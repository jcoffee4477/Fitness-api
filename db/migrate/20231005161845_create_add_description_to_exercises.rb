class CreateAddDescriptionToExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :add_description_to_exercises do |t|

      t.timestamps
    end
  end
end
