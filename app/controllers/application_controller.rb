class ApplicationController < ActionController::Base
  before_action :authenticate, :current_user

  def current_user
    # @current_user ||= User.find(params[:user_id])
  end

  def authenticate
    # 
  end
end
