class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @articles = Article.all
  end

  def create
    post = Post.create(post_params)
    redirect_to action: "show", id: post.id
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: 'index', :controller => 'articles'
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes(post_params)
    redirect_to action: 'show', id: post.id
  end



  private

  def post_params
    params.require(:post).permit(:body, :title, :article_id)
  end

  # def delete_params
  #   params.require(:delete).permit(:id)
  # end


end
