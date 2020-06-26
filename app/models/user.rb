# frozen_string_literal: true

# User
class User < ApplicationRecord
  validates :first_name, :last_name, :email,
            presence: true, length: { minimum: 3, maximum: 254 }
  validates :email, format: { with: /@/ },
                    uniqueness: { case_sensitive: false }
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  before_save { email.down_case! }
end
