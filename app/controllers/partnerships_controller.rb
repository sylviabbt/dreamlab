class PartnershipsController < ApplicationController
  # before_action :set_creator, only: [:show]
  # skip_before_action :authenticate_user!, only: [:index, :new, :create, :show, :edit, :update]


  def index
    @partnerships = policy_scope(Partnership).all
  end

  def new
    @parntership = Partnership.new
    authorize @user.admin
  end

  def create
    @partnership = Partnership.new(partnership_params)
    # ERROR user is not a method? isn't it a method from App policy?
    # @kid.user = current_user
    authorize @user.admin
    #the correct fields were entered and saved
    # if @partnership.save
    #   bypass_sign_in(@kid)
    #   redirect_to edit_kid_path(@kid)
    # else
    #   render :new
    # end
  end
end

def edit
end

def update
end

def destroy
end
