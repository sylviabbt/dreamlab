class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:home, :dream_gallery]
  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def default_url_options
    { host: "www.dreamcolab.com" }
  end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, :age])
  end

  def after_sign_in_path_for(user)
    if user.type == "Kid"
      new_kid_drawing_path(user)
    else
      drawings_path
    end
  end

  def after_sign_out_path_for(user)
    root_path
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
