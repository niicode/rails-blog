class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_post_count(user_name)
    user = User.find_by(name: user_name)
    user.post_count += 1
    user.save
  end

  def last_five_comments
    comments.order(created_at: :desc).limit(5)
  end

  def comments_counter
    comments.count
  end

  def likes_counter
    likes.count
  end
end
