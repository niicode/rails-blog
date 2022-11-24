class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def update_like_counter
    post.like_count += 1
    post.save
  end
end
