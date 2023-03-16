class ArticlesController < ApplicationController
  #new inheritance
  def new

  end
  def create
    @article = Article.all
    puts "AAAAA #{@article.inspect}"
    redirect_to root_path
  end
end
