class SiteController < ApplicationController

def home
    @page = Page.find_by_name('home')
  end

  def about
    @page = Page.find_by_name('about')
  end

  def services
    @page = Page.find_by_name('services')
  end

  def contact_us
    @page = Page.find_by_name('contact-us')
  end

  def directions
    @page = Page.find_by_name('directions')
  end

  def nope
    render layout: false
  end


end
