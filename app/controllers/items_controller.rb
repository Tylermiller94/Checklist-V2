class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params.require(:item).permit(:title, :description))
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

end