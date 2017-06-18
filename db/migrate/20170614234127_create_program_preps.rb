class CreateProgramPreps < ActiveRecord::Migration[5.0]
  def change
    create_table :program_preps do |t|
      t.integer :user_id
      t.integer :trainer_profile_id
      t.integer :quantity
      t.integer :program_id
      t.integer :exercise_id

      t.timestamps
    end
  end
end
