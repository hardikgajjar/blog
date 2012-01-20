class Backend::ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_backend_admin!
  
  def sa
    @user = current_user
    # raise params.inspect
    if @user.update_with_password(params[:user])

  end
end