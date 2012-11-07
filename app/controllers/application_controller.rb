class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter { 
    raise 'Nothing to see here' unless (cookies[:bunnies] || params[:bunnies]) == 'boss'
    cookies[:bunnies] = 'boss'
  }
end