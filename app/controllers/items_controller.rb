class ItemsController < ApplicationController
  before_action :find_items, only: [:index, :create]

  def index
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    unless @item.save
      render :index
      return
    end
    
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :quantity)
  end

  def find_items
    @items = Item.all.order(:created_at)
  end
end
