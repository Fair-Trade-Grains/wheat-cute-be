class Farmer < ApplicationRecord
  has_many :grains, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
