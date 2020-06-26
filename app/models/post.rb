# frozen_string_literal: true

# Post
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, :body, presence: true
end
