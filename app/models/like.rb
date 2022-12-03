class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  after_save :update_like_counter

  def update_like_counter
    post.update(likes_counter: post.likes.count)
  end
end
