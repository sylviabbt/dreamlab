class ChatsController < ApplicationController
  before_action :authenticate_user!
  def show
  end
  def skip_pundit?
    true
  end
end
