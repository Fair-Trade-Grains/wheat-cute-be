class Farmer < ApplicationRecord
  has_many :grains

  validates :email, presence: true, uniqueness: true
end
