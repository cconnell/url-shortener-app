class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
    
  end

  def create
    link = Link.create(user_id: current_user.id, slug: "slug_scrambler_here", target_url: params[:target_url])

    redirect_to "/links"

  end
end
