# frozen_string_literal: true

json.posts @posts do |post|
  json.id post.id
  json.text post.text
  json.price 0
  json.updated_at post.updated_at
  json.username post.profile.username
  json.mine post.profile.id == @current_profile&.id
end
