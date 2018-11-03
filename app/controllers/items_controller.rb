class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Image successfully created"
      redirect_to galery_path(@item.galery_id)
    else
      flash.now[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.assign_attributes(item_params)
    if @item.save
      flash[:notice] = "Image successfully updated"
      redirect_to galery_path(@item.galery_id)
    else
      flash.now[:error] = @item.errors.messages.values.join('</br>')
      render 'edit'
    end
  end

  private

  def item_params
    params.require(:item).permit(:url, :galery_id)
  end
end
