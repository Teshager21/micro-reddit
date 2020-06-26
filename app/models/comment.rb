# frozen_string_literal: true

# comment
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user_id, :post_id, :body, presence: true
  validates :body, length: { minimum: 1, maximum: 254 }
end
