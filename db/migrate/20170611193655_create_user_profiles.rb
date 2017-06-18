class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :gender
      t.integer :current_weight
      t.integer :starting_weight
      t.integer :goal_weight
      t.boolean :equipment, default: false
      t.boolean :paid, default: false
      t.integer :user_id
      t.integer :trainer_profile_id
      t.timestamps
    end
  end
end
