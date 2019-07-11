class SearchController < ApplicationController
  def new
    @name = ''
  end

  def create
    redirect_to search_index_url(name: params[:name])
  end

  def index
    if params[:name]
      name = params[:name].split.join("%")
      name << '%'
      name = '%' + name
      @users = User.where("name like ?", name)
    end
  end

end
