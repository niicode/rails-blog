class ChangeNilToDefaultPic < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:users, :phot, from: nil, to: "https://mybroadband.co.za/news/wp-content/uploads/2017/04/Twitter-profile-picture.jpg")
  end
end
