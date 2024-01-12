# frozen_string_literal: true

class AddUniqueIndexOnEmailToAuthentications < ActiveRecord::Migration[7.0]
  def change
    add_index :authentications, :email, unique: true
  end
end
