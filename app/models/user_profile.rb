class UserProfile < ApplicationRecord
  belongs_to :user
  belongs_to :trainer_profile
  has_many :goals

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
