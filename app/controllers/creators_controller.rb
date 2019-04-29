class CreatorsController < ApplicationController
  before_action :set_creator, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit, :update]


  def index
    @creators = policy_scope(Creator).all.order(created_at: :desc)
  end

  def show
    @collaborations = @creator.collaborations
    #refer to private method set_creator, called through before_action ()top line)
  end

  def new
    @creator = Creator.new
    authorize @creator
  end

  def create
    @creator = Creator.new(creator_params)
    # ERROR user is not a method? isn't it a method from App policy?
    # @creator.user = current_user
    authorize @creator
    #the correct fields were entered and saved
    if @creator.save
      bypass_sign_in(@creator)
      redirect_to edit_creator_path(@creator)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @creator.update(creator_params)
      redirect_to creator_path(@creator)
    else
      render :edit
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_creator
    @creator = Creator.find(params[:id])
    authorize @creator
  end

  # Only allow a trusted parameter "white list" through.
  def creator_params
    params.require(:creator).permit(:email, :password, :first_name, :last_name, :age, :avatar, :city, :description, :portfolio_url)
  end
end
