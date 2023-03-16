class ArticlesController < ApplicationController
  #new inheritance
  def new

  end
  def create
    @article = Article.new(article_params)
   
    if @article.save
      redirect_to @article
    else
      # ở yên tại new
      render 'new'
    end
  end
  def show
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end
  private
    def article_params
      params.require(:article).permit(:email)
    end
  # ko có end
end
