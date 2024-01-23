# frozen_string_literal: true

class ReallyAddReferenceAuthenticationsInProfile < ActiveRecord::Migration[7.0]
  def change
    add_reference :profiles, :authentication, foreign_key: true, index: true
  end
end
