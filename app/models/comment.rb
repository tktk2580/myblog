class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true, length:{maximum:25, message: 'Up to 25 characters'}
  # r23
end
