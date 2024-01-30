# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show update destroy]

  # GET /posts
  # GET /posts.json
  def index
    render status: :unauthorized unless session[:current_user_id]
    @current_profile = Profile.find_by_authentication_id(session[:current_user_id]) if session[:current_user_id]
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show; end

  # POST /posts
  # POST /posts.json
  def create
    render status: :unauthorized unless session[:current_user_id]
    profile = Profile.find_by_authentication_id(session[:current_user_id])
    @post = Post.new(create_post_params.merge({ profile_id: profile.id }))

    if @post.save
      render :show, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    if @post.update(post_params)
      render :show, status: :ok, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def post_params
    params.fetch(:post, {})
  end

  def create_post_params
    params.require(:post).permit(:text)
  end
end
