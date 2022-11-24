class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def update_comment_counter
    post.comment_count += 1
    post.save
  end
end
