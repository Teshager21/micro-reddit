# frozen_string_literal: true

class User < ApplicationRecord
  validates :first_name,:last_name, :email, presence: true
  validates_uniqueness_of :email
  has_many :posts
end
