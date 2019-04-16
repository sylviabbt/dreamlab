class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:show, :edit, :update, :upvote]
  skip_after_action :verify_authorized, only: [:show]
  skip_before_action :verify_authenticity_token, except: [:upvote]

  def index
    @collaborations = policy_scope(Collaboration).order(created_at: :desc)
    if current_user.type == "Creator"
      render '_creator_collab'
    elsif current_user.type == "Kid"
      render '_kid_collab'
    end
  end

  def show
  end

  def create
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.creator = current_user

    if @collaboration.save
      UserMailer.booked(@collaboration.drawing.kid).deliver_now
      authorize @collaboration
      redirect_to collaborations_path(@collaboration.creator), notice: "Collaboration was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @collaboration.creator = current_user
    if @collaboration.update(collaboration_params)
      UserMailer.completed(@collaboration.drawing.kid).deliver_now
      authorize @collaboration
      redirect_to creator_collaboration_path(@collaboration.creator, @collaboration)
    else
      render :edit
    end
  end

  def upvote
    p "==================="
    p @collaboration
    authorize @collaboration
    p "===#{user_sign_in?}"
    if user_sign_in?
      p "sign in"
      @collaboration.vote_by voter: current_user
      redirect_back(fallback_location: root_path)
    else
      p "===========not"
      session[:upvote_id] = request.remote_ip
      voter = Upvote.find_or_create_by_ip(session[:upvote_id])
    end
  end

  private

  def set_collaboration
    @collaboration = Collaboration.find((params[:id] || params[:collaboration_id]))
  end

  def collaboration_params
    params.require(:collaboration).permit(:completed_at, :collab_upload, :drawing_id, :creator_id)
  end
end
