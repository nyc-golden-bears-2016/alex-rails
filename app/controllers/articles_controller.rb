class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @posts = Post.all.where(article_id: params[:id])
  end


end

