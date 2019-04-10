class CollaborationsController < ApplicationController

  def index
    @collaborations = policy_scope(Collaboration).order(created_at: :desc)

  end

  def show
    @collaboration = Collaboration.find(params[:id])
  end

  def new
    @collaboration = Collaboration.new(collaboration_params)
    @drawing = Drawing.find(params[:drawing_id])
    @creator = Creator.find(params[:creator_id])

  end

  def create
    @collaboration = Collaboration.new(collaboration_params)
    @collaboration.creator = current_user
    @drawing = Drawing.find(params[:drawing_id])

    if @collaboration.save
      redirect_to collaborations_path, notice: "Collaboration was successfully created."
    else
      render :new
    end
  end

  private

  def collaboration_params
    params.require(:collaboration).permit(:completed_at, :image_url)
  end

end
