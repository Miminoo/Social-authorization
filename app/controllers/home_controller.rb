class HomeController < ApplicationController
  def users
    @users = User.all
  end
  def table_def
      if params[:delete]
        user = User.where(id: params[:home_ids]).destroy_all
        redirect_to new_user_session_path
      end
      if params[:block]
        User.where(id: params[:home_ids]).update_all(status: false)
        redirect_to home_url
      end
      if params[:unblock]
        User.where(id: params[:home_ids]).update_all(status: true)
        redirect_to home_url
      end
    end
  end

