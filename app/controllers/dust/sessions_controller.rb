module Dust
  class SessionsController < ApplicationController


    layout "sessions"

    def new
    end

    def create
      @user = login(params[:username], params[:password], params[:remember_me])
      if @user
        redirect_back_or_to dust_dashboard_path, :notice => "Logged In!"
      else
        redirect_to dust_login_url
        flash.alert = "Email or Password Invalid!"
      end
    end

    def destroy
      logout
      redirect_to root_url, :notice => "Logged Out!"
    end
  end
end