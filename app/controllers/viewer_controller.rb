class ViewerController < ApplicationController
  before_filter :loadmetadata

  def loadmetadata
    @pages = Page.all

	  @pagetitle = "Page Administration"
  end

  def show
    @page = Page.find_by_name(params[:name])
  end
end

