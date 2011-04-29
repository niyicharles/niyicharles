class SiteController < ApplicationController
  layout "site"

  def index
    @pages = Page.all
  end

end

