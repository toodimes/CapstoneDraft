class CreateExerciseImages < ActiveRecord::Migration[5.0]
  def change
    create_table :exercise_images do |t|
      t.string :url
      t.integer :exercise_id

      t.timestamps
    end
  end
end
