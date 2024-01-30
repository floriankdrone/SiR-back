# frozen_string_literal: true

json.post do
  json.id @post.id
  json.text @post.text
  json.price 0
  json.updated_at @post.updated_at
  json.username @post.profile.username
end
