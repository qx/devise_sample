class ApplicationController < ActionController::Base
  include ApplicationHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def check_admin
    if current_user&&current_user.email=="44708869@qq.com"
      return true
    end
    redirect_to root_path, :alert => "你没有权限"
  end
end
