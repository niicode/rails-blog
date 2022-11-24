class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_post_count(user_name)
    user = User.find_by(name: user_name)
    user.post_count += 1
    user.save
  end

  def last_five_comments
    comments.order(created_at: :desc).limit(5)
  end
end
