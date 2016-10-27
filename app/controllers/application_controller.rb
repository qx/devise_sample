class ApplicationController < ActionController::Base
  before_action :set_start_time

  def set_start_time
    @start_time = Time.now.to_f
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
