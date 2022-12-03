class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  after_save :update_comment_counter

  def update_comment_counter
    post.update(comments_counter: post.comments_counter + 1)
  end
end
