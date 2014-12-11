class RegionsController < ApplicationController
  def index
    @regions = Region.order(name: :desc)
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
    @countries = Country.all
  end

  def create
    region = Region.create(region_params)
    if region.save
      redirect_to region
    else
      render :new
    end
  end

  def edit
    @region = Region.find(params[:id])
    @countries = Country.all
  end

  def update
    region = Region.find(params[:id])
    if region.update(region_params)
      redirect_to region
    else
      render :edit
    end
  end

  private

  def region_params
    params.require(:region).permit(
      :name,
      :history,
      :country_id
    )
  end
end
