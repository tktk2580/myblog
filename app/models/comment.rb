class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true
  # r23
end
