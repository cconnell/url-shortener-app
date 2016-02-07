class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
    
  end

  def create
    link = Link.create(user_id: current_user.id, target_url: params[:target_url])

    link.slug_link

    redirect_to "/links"

  end

  def show
   link = Link.find(params[:id])

   redirect_to "<%= link.target_url %>"
   
  end
end
