class HomeController < ApplicationController
  def users
    @users = User.all
  end
  def bulk_destroy
    if params[:delete]
      User.where(id: params[:home_ids]).destroy_all
      redirect_to home_url
    elsif params[:block]
      User.where(id: params[:home_ids]).update_all(status: false)
      redirect_to home_url
    elsif params[:unblock]
      User.where(id: params[:home_ids]).update_all(status: true)
      redirect_to home_url
  end
end
end
