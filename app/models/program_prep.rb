class ProgramPrep < ApplicationRecord
  belongs_to :user
  belongs_to :trainer_profile
  belongs_to :program, optional: true
  belongs_to :exercise

end
