class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    if(@bookmark.save)
      redirect_to @bookmark
    else
      render 'new'
    end
  end
end
