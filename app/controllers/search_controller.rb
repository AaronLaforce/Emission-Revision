class SearchController < ApplicationController
  def new
    @name = ''
  end

  def create
    redirect_to search_index_url(name: params[:name])
  end

  def index
    @users = User.where(name: params[:name])
  end

end
