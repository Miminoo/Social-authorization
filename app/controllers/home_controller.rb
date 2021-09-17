class HomeController < ApplicationController
  def users
    @users = User.all
  end
  def destroy_multiple
    current_user.entries.destroy_all(:id => params[:user_ids])
    respond_to do |format|
      format.html { redirect_to(new_user_session_url) }
      format.xml  { head :ok }
    end 
  end
end
