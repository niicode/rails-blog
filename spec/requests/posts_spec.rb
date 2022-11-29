require 'rails_helper'

RSpec.describe 'Posts',type: :request do
  before(:each) do
    @user = User.create(name: 'Tom', phot: '', posts_counter: 0)
    @post = Post.create(
      user: @user,
      title: 'Post title',
      text: 'Post text',
      comments_counter: 0,
      likes_counter: 0
    )
    Comment.create(user: @user, post: @post, text: 'This is great')
    Comment.create(user: @user, post: @post, text: 'Testing')
    Comment.create(user: @user, post: @post, text: 'I love this test')
  end

  describe 'GET /index' do
    before(:each) do
      get user_posts_path(@user)
    end

    it 'return correct response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it 'body should includes correct placeholder text' do
      expect(response.body).to include('Posts for all users')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get user_post_path(@user, @post)
    end

    it 'return correct response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to render_template(:show)
    end

    it 'body should includes correct placeholder text' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end
end
