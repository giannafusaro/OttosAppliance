class SiteController < ApplicationController

def home
    @page = Page.find_by_name('home')
  end

  def about
    @page = Page.find_by_name('about')
  end

  def services
    @page = Page.find_by_name('how-it-works')
  end

  def contact_us
    @page = Page.find_by_name('coaches')
  end

  def directions
    @page = Page.find_by_name('privacy-policy')
  end

  def nope
    render layout: false
  end


end
