class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :destroy, :update]
  # skip_before_action :authenticate_user!, only: [:download]

  def index
    @posts = policy_scope(Post).all.order(created_at: :desc)
  end

  def create
    @post = Post.new(post_params)
    @post.creator = current_user
    authorize @post

    if @post.save
      redirect_to posts_path, notice: 'Thank you! Your post was successfully uploaded'
    else
      render :new
    end
  end

  def new
    @post = Post.new
    @post.creator = current_user
    authorize @post
  end

  def show
    @user = current_user
    authorize @post
  end

  def edit
  end

  def update
    @post.creator = current_user
    if @post.update(post_params)
      authorize @post
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    authorize @post
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:creator_id, :title, :summary, :content, :main_image_upload)
  end
end
