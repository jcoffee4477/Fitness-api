class CreateRoutines < ActiveRecord::Migration[7.0]
  def change
    create_table :routines do |t|
      t.string :name
      t.text :description
      t.text :image_url
      t.text :video_url

      t.timestamps
    end
  end
end
