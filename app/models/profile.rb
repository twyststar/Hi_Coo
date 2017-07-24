class Profile < ApplicationRecord
  belongs_to :user
  has_many :hicoos
end
