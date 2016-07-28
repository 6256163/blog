class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def new
  end

  def create
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
  end
end
