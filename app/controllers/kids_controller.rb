class KidsController < ApplicationController
   before_action :set_kid, only: [:show, :edit, :update]

  def show
   #refer to private method set_kid, called through before_action ()top line)
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = kid.new(kid_params)
    #the correct fields were entered and saved
    @kid.save ? redirect_to @kid : render :new
  end

  def edit
  end

  def update
    @kid.update(kid_params) ? redirect_to @kid : render :edit
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_kid
    @kid = Kid.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def kid_params
    params.require(:kid).permit(:first_name, :age, :avatar, :city, :description, :favourite_things, :dislikes)
  end
end
