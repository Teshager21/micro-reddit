# frozen_string_literal: true

# Post
class Post < ApplicationRecord
  belongs_to :user
  validates :title, :body, presence: true
end
