require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'after create' do
    it 'Should update the post\'s comments_counter' do
      comment = Comment.create(post: Post.first, author: User.first, text: 'comment')

      expect(comment.post.comments_counter).to eq(comment.post.comments.length)
    end
  end
end
