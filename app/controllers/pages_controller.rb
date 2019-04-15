class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
        @collaborations = policy_scope(Collaboration).order(created_at: :desc)

  end
end
