class Program < ApplicationRecord
  belongs_to :user
  has_many :program_prep
  has_many :exercises, through: :program_prep
end
