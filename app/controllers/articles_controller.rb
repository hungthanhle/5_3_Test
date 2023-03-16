class ArticlesController < ApplicationController
  #new inheritance
  def new

  end
  def create
    puts params[:article].class
    # chuyển từ giá trị HASH sang OBJECT
    @article = Article.new(params[:article])
    # GIÁ TRỊ CỦA CÁC INSTANCE VẪN LÀ OBJECT
    puts @article.class
    @article.save
    puts "Congra #{Article.all.inspect}"
    redirect_to root_path
  end
end
