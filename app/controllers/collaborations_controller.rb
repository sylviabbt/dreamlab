class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:show, :edit, :update]
  skip_after_action :verify_authorized, only: [:show]


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
      authorize @collaboration
      redirect_to creator_collaborations_path(@collaboration.creator), notice: "Collaboration was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @collaboration.creator = current_user
    if @collaboration.update(collaboration_params)
      authorize @collaboration
      redirect_to creator_collaboration_path(@collaboration.creator, @collaboration)
    else
      render :edit
    end
  end

  private

  def set_collaboration
    @collaboration = Collaboration.find(params[:id])
  end

  def collaboration_params
    params.require(:collaboration).permit(:completed_at, :collab_upload, :drawing_id, :creator_id)
  end
end
