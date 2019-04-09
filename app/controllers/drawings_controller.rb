class DrawingsController < ApplicationController
  def index
    @drawings = policy_scope(Drawing).where(user: current_user)
  end

  def create
    @drawing = Drawing.new
    @kid = Skill.find(params[:kid_id])
    authorize @drawing
  end

  def new
    @drawing = Drawing.new(drawing_params)
    authorize @drawing
    @drawing.user = current_user
    @kid = Kid.find(params[:kid_id])
    @drawing.kid = @kid
    if @drawing.save
      redirect_to drawings_path, notice: 'Thank you! Your drawing was successfully uploaded'
    else
      render :new
    end
  end

  def show
    @user = current_user
    @drawing = Drawing.find(params[:id])
    authorize @drawing
  end

  private

  def drawing_params
    params.require(:drawing).permit(:status, :name, :upload_at, :booking_at, :image_url)
  end
end
