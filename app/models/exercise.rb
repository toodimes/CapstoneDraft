class Exercise < ApplicationRecord
  belongs_to :muscle
  has_many :exercise_images
end
