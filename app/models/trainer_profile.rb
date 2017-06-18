class TrainerProfile < ApplicationRecord
  belongs_to :user
  has_many :user_profiles
  validates :name, :gender, presence: true

  after_create :assign_avatar

  def assign_avatar
    if gender == "female"
      Avatar.create(url: "female-avatar.jpg", user_id: self.user.id)
    else
      Avatar.create(url: "male-avatar.jpg", user_id: self.user.id)
    end
  end

end
