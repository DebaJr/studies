class BlogController < ApplicationController
  before_filter :register_view
  
  def index
    @posts = Article.all
  end
  
  def articles
    @post = Article.find(params[:id])
  end
  
  def category
    @posts = Article.where(category: params[:c]).all
  end
  
  private
  def register_view
    View.create(remote_ip: request.remote_ip)
  end
end