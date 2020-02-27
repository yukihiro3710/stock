class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if  @item.save
      redirect_to root_path
    else
      render  :new
    end
  end


  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
       redirect_to root_path
    else
       redirect_to edit_item_path(item.id)
    end
  end












  
  private
  def item_params
    # params.permit(:name, :capacity, :until, :quantity, :place, :deliverydate)
    params.require(:item).permit(:name, :capacity, :until, :quantity, :place, :deliverydate)
  end

end