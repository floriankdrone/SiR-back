# frozen_string_literal: true

json.authentication do
  json.access_token @authentication.access_token
  json.refresh_token @authentication.refresh_token
end
