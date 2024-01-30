# frozen_string_literal: true

# Class Profile
class Profile < ApplicationRecord
  belongs_to :authentication

  has_many :posts, dependent: :destroy
end
