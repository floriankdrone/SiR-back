# frozen_string_literal: true

class RemoveProfileIdFromAuthentication < ActiveRecord::Migration[7.0]
  def change
    remove_reference :authentications, :profile, foreign_key: true
  end
end
