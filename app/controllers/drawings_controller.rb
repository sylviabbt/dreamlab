class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:show, :destroy]
  def index
    @drawings = policy_scope(Drawing).where(kid: current_user)
  end

  def create
    @drawing = Drawing.new(drawing_params)
    @drawing.kid = current_user
    authorize @drawing
    if @drawing.save
      redirect_to drawings_path, notice: 'Thank you! Your drawing was successfully uploaded'
    else
      render :new
    end
  end

  def new
    @drawing = Drawing.new
    @drawing.kid = current_user

    authorize @drawing
  end

  def show
    @user = current_user
    authorize @drawing
  end

  def destroy
    @drawing.destroy
    authorize @drawing
    redirect_to drawings_path
  end

  private

  def set_drawing
    @drawing = Drawing.find(params[:id])
  end

  def drawing_params
    params.require(:drawing).permit(:name, :image)
  end
end
