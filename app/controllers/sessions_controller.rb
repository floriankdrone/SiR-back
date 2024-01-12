# frozen_string_literal: true

# Sessions controller
class SessionsController < ApplicationController
  # POST /sessions
  def create
    @authentication = Authentication.find_by(email: session_params[:email], password: session_params[:password])
    if @authentication.present?
      session[:current_user_id] = @authentication.id
      render status: :created
    else
      render status: :bad_request
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
