class ApplicationController < ActionController::Base
 before_action :set_user, only: [:show, :edit, :update, :destroy]
 before_filter :authenticate_user!
 load_and_authorize_resource

rescue_from CanCan::AccessDenied do |exception|
	redirect_to main_app.root_url, :alert => exception.message
end


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
