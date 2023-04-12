class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def new
  end

  def create
  end

  def show
  end

end