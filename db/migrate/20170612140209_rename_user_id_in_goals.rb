class RenameUserIdInGoals < ActiveRecord::Migration[5.0]
  def change
    rename_column :goals, :user_id, :user_profile_id
  end
end
