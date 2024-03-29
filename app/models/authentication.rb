# frozen_string_literal: true

# Authentication class
class Authentication < ApplicationRecord
  has_one :profile

  def access_token
    "AT#{@email}-#{Time.now.to_i}"
  end

  def refresh_token
    "RT#{@email}-#{Time.now.to_i}"
  end
end
