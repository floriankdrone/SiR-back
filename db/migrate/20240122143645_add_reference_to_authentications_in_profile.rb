# frozen_string_literal: true

class AddReferenceToAuthenticationsInProfile < ActiveRecord::Migration[7.0]
  def change
    add_reference :authentications, :profile, foreign_key: true
  end
end
