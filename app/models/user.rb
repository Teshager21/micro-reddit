# frozen_string_literal: true

# User
class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true,
                                             length: { minimum: 2, maximum: 12 }
  validates :email, format: { with: /@/ },
                    uniqueness: { case_sensitive: false }
  has_many :posts
end
