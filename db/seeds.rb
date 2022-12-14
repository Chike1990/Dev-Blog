# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
# second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

# (1..4).each do |i|
#     Post.create(author: first_user, title: "Hello ##{i}", text: "This is my post #{i}")
# end

# first_post = Post.first

# (1..6).each do |i|
#     Comment.create(post: first_post, author: second_user, text: "comment #{i}" )
# end

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'User 3', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'User 4', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'User 5', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
User.create(name: 'User 6', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author: first_user, title: 'Hello1', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Hello2', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'Hello3', text: 'This is my third post')

Post.create(author: second_user, title: 'Hello1', text: 'This is my first post')
Post.create(author: second_user, title: 'Hello2', text: 'This is my second post')
Post.create(author: second_user, title: 'Hello3', text: 'This is my third post')

Comment.create(post: first_post, author: first_user, text: 'comment 1!' )
Comment.create(post: first_post, author: first_user, text: 'comment 2!' )

Comment.create(post: second_post, author: first_user, text: 'comment 1!' )
Comment.create(post: second_post, author: first_user, text: 'comment 2!' )

Comment.create(post: third_post, author: first_user, text: 'comment 1!' )
Comment.create(post: third_post, author: first_user, text: 'comment 2!' )

Comment.create(post: first_post, author: second_user, text: 'comment 1!' )
Comment.create(post: first_post, author: second_user, text: 'comment 2!' )

Comment.create(post: second_post, author: second_user, text: 'comment 1!' )
Comment.create(post: second_post, author: second_user, text: 'comment 2!' )

Comment.create(post: third_post, author: second_user, text: 'comment 1!' )
Comment.create(post: third_post, author: second_user, text: 'comment 2!' )