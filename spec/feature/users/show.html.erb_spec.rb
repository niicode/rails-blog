require 'rails_helper'
RSpec.describe 'User Index Page', type: :system do
  subject = User.create(name: 'John', posts_counter: 30, phot: 'https://randomuser.me/api/portraits/men/70.jpg',
                        bio: 'Teacher from Poland.')
    before { subject.save }
  describe 'show page' do
      it "I can see the user's profile picture." do
        visit user_path(subject.id)
        page.has_css?('.img-fluid')
      end
      it "I can see the user's username." do
        visit user_path(subject.id)
        page.has_content?(subject.name)
      end
      it 'I can see the number of posts the user has written.' do
        visit user_path(subject.id)
        page.has_content?(subject.posts_counter)
      end
      it "I can see the user's bio." do
        visit user_path(subject.id)
        page.has_content?(subject.bio)
      end
      it "I can see the user's first 3 posts." do
        Post.create([{ user: subject, title: 'First Post', text: 'My first post' },
                     { user: subject, title: 'Second Post', text: 'My Second post' }, { user: subject, title: 'Third Post', text: 'My Third post' }])
        visit user_path(subject.id)
        page.has_content?(subject.posts)
      end
      it "I can see a button that lets me view all of a user's posts." do
        visit user_path(subject.id)
        page.has_button?('See All Posts')
      end

      it "When I click to see all posts, it redirects me to the user's post's index page." do
        visit user_path(subject.id)
        sleep(5)
        click_on 'See All Posts'
        visit user_posts_path(subject.id)
        page.has_content?('John')
      end
    end
end