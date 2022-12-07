# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users
first_user = User.create(name: 'Tom',
                         phot: 'https://media.istockphoto.com/photos/toy-poddle-on-the-bed-picture-id1380984414?k=20&m=1380984414&s=612x612&w=0&h=KroZ6ElMUflG1Qp7dtTdzBxXIhWzYzgO9SvjNw-FEiU=',
                         bio: 'Teacher from Mexico.', posts_counter: 0)
second_user = User.create(name: 'Lilly',
                          phot: 'https://media.istockphoto.com/photos/toy-poddle-on-the-bed-picture-id1380984414?k=20&m=1380984414&s=612x612&w=0&h=KroZ6ElMUflG1Qp7dtTdzBxXIhWzYzgO9SvjNw-FEiU=',
                          bio: 'Teacher from Poland.', posts_counter: 0)
third_user = User.create(name: 'Tim',
                         phot: 'https://media.istockphoto.com/photos/toy-poddle-on-the-bed-picture-id1380984414?k=20&m=1380984414&s=612x612&w=0&h=KroZ6ElMUflG1Qp7dtTdzBxXIhWzYzgO9SvjNw-FEiU=',
                         bio: 'Teacher from Canada.', posts_counter: 0)

# Posts
first_post = Post.create(user: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                         likes_counter: 0)
second_post = Post.create(user: first_user, title: 'Hello again', text: 'This is my second post',
                          comments_counter: 0, likes_counter: 0)
third_post = Post.create(user: first_user, title: 'Hello again and again', text: 'This is my third post',
                         comments_counter: 0, likes_counter: 0)
fourth_post = Post.create(user: first_user, title: 'Hello', text: 'This is my fourth post', comments_counter: 0,
                          likes_counter: 0)

fifth_post = Post.create(user: second_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                         likes_counter: 0)
sixth_post = Post.create(user: second_user, title: 'Hello again', text: 'This is my second post',
                         comments_counter: 0, likes_counter: 0)
seventh_post = Post.create(user: second_user, title: 'Hello again and again', text: 'This is my third post',
                           comments_counter: 0, likes_counter: 0)