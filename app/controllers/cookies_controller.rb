class CookiesController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[user_id] = user.id
      redirect_to users_url, notice: "iniciada sesion"
    else
      redirect_to user_url, notice: "fallo inicio sesion"
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_url, notice: "sesion cerrada"
  end
end
