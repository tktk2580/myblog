class Post < ApplicationRecord
  has_many :comments ,dependent: :destroy
  # r28 後半がないとコメントがあるものを削除できない
  # r23記事とコメントが１対nの関係だからhas_many
  #r23 @post.commentsポストからコメントを持ってこれる
  validates :title, presence: true, length:{minimum: 3, message: 'Too short to post!'}
  validates :body, presence: true, length:{maximum:700, message: 'Up to 700 characters'}
  
end
