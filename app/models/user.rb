class User < ApplicationRecord
  has_many :programs
  has_many :avatars
  has_many :program_prep
  has_one :trainer_profile
  has_one :user_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
