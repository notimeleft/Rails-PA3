class HomeController < ApplicationController
  before_action :require_login
  def index

    @current_user = current_user.email
    @res = Enrollment.where('user_email=?',@current_user)
    
  end

end
