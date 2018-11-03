class GaleriesController < ApplicationController
  add_breadcrumb "Galeries", :galeries_path
  def index
    @galeries = Galery.all
  end

  def new
    add_breadcrumb "Create new galery", new_galery_path
    @galery = Galery.new
  end

  def create
    @galery = Galery.new(galery_params)
    if @galery.save
      flash.now[:notice] = "Galery successfully created"
      redirect_to galery_path(@galery)
    else
      flash.now[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @galery = Galery.find(params[:id])
    add_breadcrumb "Galery '#{@galery.name}'", galery_path(@galery)
    @item = Item.new
  end

  def edit
    @galery = Galery.find(params[:id])
    add_breadcrumb "Edit #{@galery.name}", edit_galery_path(galery)
  end

  def update
    @galery = Galery.find(params[:id])
    @galery.assign_attributes(galery_params)
    if @galery.save
      flash.now[:notice] = "Galery successfully updated"
      redirect_to galery_path(@galery)
    else
      flash.now[:error] = "Something went wrong"
      render 'edit'
    end
  end

  private

  def galery_params
    params.require(:galery).permit(:name, :description)
  end
end
