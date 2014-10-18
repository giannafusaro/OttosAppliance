class Admin::PagesController < ApplicationController
  before_filter :require_user

  def edit
    @page = Page.find_by_name params[:page]
  end

  def update
    @page = Page.find_by_name params[:page]
    @page.data = params[:data]

    if params.has_key?('save')
      if @page.save
        flash[:success] = "#{@page.name} page updated successfully."
        redirect_to admin_cms_path(@page.name)
      else
        render :edit
      end
    else
      @preview = true
      partial = case @page.name
      when "signup" then "users/signup"
      when "request-session" then "sessions/new"
      else "site/#{@page.name.gsub('-','_')}"
      end
      render partial
    end
  end
end
