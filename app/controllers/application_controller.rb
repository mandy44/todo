class ApplicationController < ActionController::Base
  protect_from_forgery

  # GET /
  # GET /index
  def index
    @tasks = Task.all
  end
end
