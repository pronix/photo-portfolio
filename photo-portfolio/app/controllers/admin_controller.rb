class AdminController < ApplicationController
    before_filter 'admin_required'
 def admin_required
   unless session[:user_id]==1
     redirect_to root_path
   end
 end
  def index
  end

end
