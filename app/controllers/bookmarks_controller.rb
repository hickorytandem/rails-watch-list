class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
      if @bookmark.save
      redirect_to @bookmark, notice: 'Bookmark was succesfully created.'
    else
      render :new

  end

  def destroy
     @bookmark = Bookmark.find(params[:id])
     @bookmark.destroy
     redirect_to list_path(@bookmark.list)
  end

end
