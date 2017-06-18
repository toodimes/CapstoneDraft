class CreateTrainerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :trainer_profiles do |t|
      t.string :name
      t.string :gender
      t.text :experience
      t.text :qualifications
      t.boolean :status, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
