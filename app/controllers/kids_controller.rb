class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update]

  def show
    #refer to private method set_kid, called through before_action ()top line)
  end

  def new
    @kid = Kid.new
    authorize @kid
  end

  def create
    @kid = Kid.new(kid_params)
    # ERROR user is not a method? isn't it a method from App policy?
    # @kid.user = current_user
    authorize @kid
    #the correct fields were entered and saved
    if @kid.save
      redirect_to edit_kid_path(@kid)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kid.update(kid_params)
      redirect_to kid_path(@kid)
    else
      render :edit
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_kid
    @kid = Kid.find(params[:id])
    authorize @kid
  end

  # Only allow a trusted parameter "white list" through.
  def kid_params
    params.require(:kid).permit(:email, :password, :first_name, :age, :avatar, :city, :description, :favourite_things, :dislikes)
  end
end
