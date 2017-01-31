class ArticlesController < ApplicationController
  def index
    if params[:keywords].present?
      @articles = Article.search params[:keywords], fields: [:title], track: true
      @searches = Searchjoy::Search.all.group(:query).count
    end
  end
end
