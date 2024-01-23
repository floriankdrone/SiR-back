# frozen_string_literal: true

class UpdateIndexOnProfileToUniqueIndex < ActiveRecord::Migration[7.0]
  def change
    remove_index :profiles, [:authentication_id]
    add_index :profiles, [:authentication_id], unique: true
  end
end
