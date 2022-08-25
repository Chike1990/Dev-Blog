require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When creating a new user:' do
    subject { User.new(name: 'Tom', photo: 'https://picsum.photos/id/1005/576/384', bio: 'Teacher from Mexico.') }

    before { subject.save }

    it 'Should validate name must not be blank.' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'Should validate posts_counter must be an integer.' do
      subject.posts_counter = 0.2
      expect(subject).to_not be_valid
    end

    it 'Should validate posts_counter must be greater than or equal to zero.' do
      subject.posts_counter = -1
      expect(subject).to_not be_valid
    end
  end

  context 'most_recent_posts method for a given user:' do
    subject { User.find(1) }

    it 'Should return 3 most recent posts' do
      result = subject.most_recent_posts

      expect(result.length).to eq(3)
      expect(result).to include(subject.posts.last)
    end
  end
end
