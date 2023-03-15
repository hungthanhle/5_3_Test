class ArticlesController < ApplicationController
  #new inheritance
  def new

  end
  def create
    render plain: params[:article].inspect
  end
end
