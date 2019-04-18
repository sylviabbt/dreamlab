class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:show, :destroy, :download]
  skip_before_action :authenticate_user!, only: [:download]
  def index
    @drawings = policy_scope(Drawing).order(created_at: :desc)

    if current_user.type == "Creator"
      @drawings = Drawing.all
    elsif current_user.type == "Kid"
      @drawings = current_user.drawings
      redirect_to new_kid_drawing_path(current_user)
    end
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
    @drawings = current_user.drawings
    authorize @drawing
  end

  def show
    @user = current_user
    authorize @drawing
    @collaboration = @drawing.collaboration || Collaboration.new
    @collaboration.drawing = @drawing
  end

  def destroy
    @drawing.destroy
    authorize @drawing
    redirect_to drawings_path
  end

  def download
    require 'open-uri'
    authorize @drawing
    img = @drawing.image
    url = @drawing.image.url
    send_file(open(url), filename: img.file.filename)
  end

  private

  def set_drawing
    @drawing = Drawing.find((params[:id] || params[:drawing_id]))
  end

  def drawing_params
    params.require(:drawing).permit(:name, :image, :id)
  end
end
