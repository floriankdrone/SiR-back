# frozen_string_literal: true

# Profiles controller
class ProfilesController < ApplicationController
  def create
    render status: :unauthorized unless session[:current_user_id]
    @profile = Profile.new(create_profile_params)
    return render status: :created if @profile.save!

    render json: @profile.errors, status: :unprocessable_entity
  end

  def show
    render json: {}, status: :unauthorized unless session[:current_user_id]
    @profile = Profile.find_by_authentication_id(session[:current_user_id])
    return render json: {}, status: :not_found unless @profile

    render status: :ok
  end

  private

  # Only allow a list of trusted parameters through.
  def create_profile_params
    params.require(:profile).permit(:username).merge(authentication_id: session[:current_user_id])
  end
end
