# frozen_string_literal: true

# CreatePosts
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string 'text'
      t.datetime 'discarded_at'
      t.timestamps
    end
    add_reference :posts, :profile, index: true, foreign_key: true
    add_index :posts, :discarded_at
  end
end
