class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_action :authenticate_user!, :except => [:show, :index]
# before_action :authenticate_user!
end