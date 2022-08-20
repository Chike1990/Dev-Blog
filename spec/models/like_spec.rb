require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'after create' do
    it 'Should update the post\'s likes_counter' do
      like = Like.create(author: User.first, post: Post.first)

      expect(like.post.likes_counter).to eq(like.post.likes.length)
    end
  end
end
