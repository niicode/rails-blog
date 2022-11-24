class User < ActiveRecord::Base
  has_many :posts
  has_many :comments, through: :posts
  has_many :likes, through: :posts

  def three_recent_posts(user_name)
    Post.where(name: user_name).order(created_at: :desc).limit(3)
  end
end
