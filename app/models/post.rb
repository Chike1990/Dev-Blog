class Post < ApplicationRecord
  validates :title,
            presence: { allow_blank: false, message: 'must not be blank.' },
            length: { maximum: 250, message: 'must not exceed 250 characters' }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_many :comments
  has_many :likes
  belongs_to :author, class_name: 'User'
  attribute :comments_counter, :integer, default: 0
  attribute :likes_counter, :integer, default: 0

  after_create :update_posts_counter

  def most_recent_comments
    comments.order(created_at: :desc).includes(:author).limit(5)
  end

  private

  def update_posts_counter
    author.increment!(:posts_counter)
  end
end
