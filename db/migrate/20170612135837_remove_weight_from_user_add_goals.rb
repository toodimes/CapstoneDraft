class RemoveWeightFromUserAddGoals < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_profiles, :current_weight, :integer
    remove_column :user_profiles, :starting_weight, :integer
    remove_column :user_profiles, :goal_weight, :integer
    add_column :user_profiles, :goal_id, :integer
  end
end
