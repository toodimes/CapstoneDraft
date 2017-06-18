class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.boolean :equipment
      t.integer :muscle_id

      t.timestamps
    end
  end
end
