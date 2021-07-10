class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def created
    @list = List.new(list_params)
        if @list.save
      redirect_to @list, notice: 'List was succesfully created.'
    else
      render :new
    end
  end

end
