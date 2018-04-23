class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:user][:name])
    return redirect_to signup_path unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to root_path
  end

end
