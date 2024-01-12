# frozen_string_literal: true

# Be sure to restart your server when you modify this file.
Rails.application.config.session_store :cookie_store, key: '_GTM'
Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use Rails.application.config.session_store, Rails.application.config.session_options
