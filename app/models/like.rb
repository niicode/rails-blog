class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def update_like_counter
    post.likes_counter += 1
    post.save
  end
end
