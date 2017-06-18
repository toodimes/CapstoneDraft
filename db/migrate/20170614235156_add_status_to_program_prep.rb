class AddStatusToProgramPrep < ActiveRecord::Migration[5.0]
  def change
    add_column :program_preps, :status, :string, default: "stored"
  end
end
