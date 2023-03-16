class ArticlesController < ApplicationController
  #new inheritance
  def new

  end
  def create
    @article = Article.new(article_params)
    @article.save
    puts "Congra #{Article.all.inspect}"
    redirect_to root_path
  end
  private
    def article_params
      # giông giống validate chăng ??
      params.require(:article).permit(:email)
    end
end
