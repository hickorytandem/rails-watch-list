class ListsController < ApplicationController

  def index
    @movies = Movies.all
  end

  def show
  end

  def new
  end

  def created
  end

end
