class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :dream_gallery]

  def home
    @collaborations = Collaboration.all.order(created_at: :desc)
    @home = true
  end

  def dream_gallery
    @collaborations = Collaboration.all.order(created_at: :desc)
  end

end
