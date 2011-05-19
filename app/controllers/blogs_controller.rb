class BlogsController < ApplicationController
  before_filter :loadmetadata

  layout "article"

  def loadmetadata
    @pages = Page.all

	  @pagetitle = "Page Administration"
  end

  def index
    @blogs = Blog.all

    @blogs = Blog.paginate :per_page => 6, :page => params[:page], :order => 'created_at DESC'
  end

  def show
    @blog = Blog.find(params[:id])

    render :layout => "display"
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      flash[:notice] = "Successfully created blog."
      redirect_to @blog
    else
      render :action => 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      flash[:notice] = "Successfully updated blog."
      redirect_to @blog
    else
      render :action => 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    flash[:notice] = "Successfully destroyed blog."
    redirect_to blogs_url
  end
end

