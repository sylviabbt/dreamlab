class PartnershipsController < ApplicationController
  before_action :set_partnership, only: [:show, :edit, :update, :destroy]

  def index
    @partnerships = policy_scope(Partnership).all
  end

  def new
    @parntership = Partnership.new
    authorize @user.admin
  end

  def create
    @partnership = Partnership.new(partnership_params)
    if @partnership.save
      redirect_to edit_partnership_path(@creator)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @Partnership.update(partnership_params)
      redirect_to partnership_path(@partnership)
    else
      render :edit
    end
  end

  def destroy
    @partnership.destroy
    redirect_to partnerships_path
  end

  private

  def set_partnership
    @partnership = Partnership.find(params[:id])
    authorize @partnership
  end

  def partnership_params
    params.require(:partnership).permit(:name)
  end
end
