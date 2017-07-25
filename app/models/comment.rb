class Comment < ApplicationRecord
  belongs_to :hicoo
  validates :content, length: { maximum: 250 }
end
