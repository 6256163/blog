class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def new
  end

  def create
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
  end
end
