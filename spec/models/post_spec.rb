require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'When creating a new user:' do
    subject { Post.new(author: User.first, title: 'Hello', text: 'This is my post') }

    before { subject.save }

    it 'Should validate title must not be blank.' do
      subject.title = ''
      expect(subject).to_not be_valid
    end

    it 'Should validate title must not exceed 250 characters' do
      subject.title = 'a' * 251
      expect(subject).to_not be_valid
    end

    it 'Should validate comments_counter must be an integer.' do
      subject.comments_counter = 0.2
      expect(subject).to_not be_valid
    end

    it 'Should validate comments_counter must be greater than or equal to zero.' do
      subject.comments_counter = -1
      expect(subject).to_not be_valid
    end

    it 'Should validate likes_counter must be an integer.' do
      subject.likes_counter = 0.2
      expect(subject).to_not be_valid
    end

    it 'Should validate likes_counter must be greater than or equal to zero.' do
      subject.likes_counter = -1
      expect(subject).to_not be_valid
    end
  end

  context 'most_recent_comments method for a given post:' do
    subject { Post.find(1) }

    it 'Should return 5 most recent comments' do
      result = subject.most_recent_comments

      expect(result.length).to eq(5)
      expect(result).to include(subject.comments.last)
    end
  end

  context 'after create' do
    it 'Should update the author\'s posts_counter' do
      post = Post.create(author: User.first, title: 'Hello', text: 'This is my post')

      expect(post.author.posts_counter).to eq(post.author.posts.length)
    end
  end
end
