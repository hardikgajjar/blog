class Backend::ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_backend_admin!
end