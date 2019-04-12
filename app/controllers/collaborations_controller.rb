class CollaborationsController < ApplicationController
  skip_after_action :verify_authorized, only: [:show]

  def index
    @collaborations = policy_scope(Collaboration).order(created_at: :desc)
  end

  def show
    @collaboration = Collaboration.find(params[:id])
  end

  # def new
  #   @collaboration = Collaboration.new(collaboration_params)
  #   @drawing = Drawing.find(params[:drawing_id])
  #   @creator = Creator.find(params[:creator_id])
  # end

  def create
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.creator = current_user
    # @drawing = Drawing.find(params[:drawing_id])

    if @collaboration.save
      authorize @collaboration
      # CollaborationMailer.creation_confirmation(current_user).deliver_now
      redirect_to collaborations_path, notice: "Collaboration was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @collaboration = Collaboration.find(params[:id])
    @collaboration.creator = current_user
    if @collaboration.update(collaboration_params)
      authorize @collaboration
      redirect_to creator_collaboration_path(@collaboration.creator, @collaboration)
    else
      render :edit
    end
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:completed_at, :collab_upload, :drawing_id, :creator_id)
  end
end
