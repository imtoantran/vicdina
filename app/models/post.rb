class Post < ActiveRecord::Base
  attr_accessor :content, :user_id
  belongs_to :user
  validates :user_id, presence: true
  # All customers ordered by their ID desending
  scope :ordered, -> { order(id: :desc)}
end
