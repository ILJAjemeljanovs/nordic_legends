class GaleriesController < ApplicationController
  def index
    @galeries = Galery.all
  end

  def new
    @galery = Galery.new
  end

  def create
    @galery = Galery.new(galery_params)
    if @galery.save
      flash[:notice] = "Galery successfully created"
      redirect_to galery_path(@galery)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @galery = Galery.find(params[:id])
    @item = Item.new
  end

  private

  def galery_params
    params.require(:galery).permit(:name, :description)
  end
end
