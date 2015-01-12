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

  def submit_email

    unless OttosMailer.customer_email(params[:name],params[:phone],params[:email],params[:message]).deliver
      flash[:success] = "Problems sending mail. Please try again."
    end
    flash[:success] = "Email sent!"
    redirect_to contact_us_path and return
  end

  def nope
    render layout: false
  end


end
