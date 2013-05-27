class ApplicationController < ActionController::Base
  protect_from_forgery

  # GET /
  # GET /index
  def index
    @tasks = Task.get_not_finished
  end
end
