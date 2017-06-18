class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :trainer, :boolean, default: false
    add_column :users, :trainer_application, :boolean, default: false
  end
end
