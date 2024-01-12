# frozen_string_literal: true

# Authentication Controller
class AuthenticationsController < ApplicationController
  # POST /authentications
  def create
    @authentication = Authentication.new(authentication_params)

    if @authentication.save
      session[:current_user_id] = @authentication.id
      render status: :created
    else
      render json: @authentication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authentications/1
  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
  end

  private

  # Only allow a list of trusted parameters through.
  def authentication_params
    params.require(:authentication).permit(:email, :password)
  end
end
