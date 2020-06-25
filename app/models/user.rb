# frozen_string_literal: true

# User
class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: /@/ }, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 254 }
  has_many :posts
end
