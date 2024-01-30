# frozen_string_literal: true

# Post model
class Post < ApplicationRecord
  include Discard::Model

  belongs_to :profile

  default_scope -> { kept }
end
