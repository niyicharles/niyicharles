class SessionsController < ApplicationController
  before_filter :loadmetadata

  def loadmetadata
    @pages = Page.all

	  @pagetitle = "Page Administration"
  end

  def new
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully."
#     redirect_to_target_or_default(root_url)
      redirect_to (view_page_path("home"))
    else
      flash.now[:error] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out."
#   redirect_to root_url
    redirect_to (view_page_path("home"))
  end
end

