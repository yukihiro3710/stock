class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    # Item.create(item_params)
    if  @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def item_params
    params.permit(:name, :capacity, :until, :quantity, :place, :deliverydate)
    # params.require(:item).permit(:name, :capacity, :until, :quantity, :place, :deliverydate)
  end

end