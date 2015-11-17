class PlacesController < ApplicationController

  before_action only: [:new, :create, :edit, :update, :destroy] do
    if current_user.role_is?("moderator")
    else
      redirect_to '/'
    end
  end

  def index
    @places = Place.order(name: :desc)
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
    @countries = Country.all
    @regions = Region.all
  end

  def create
    place = Place.create(place_params)
    if place.save
      redirect_to place
    else
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
    @countries = Country.all
    @regions = Region.all
  end

  def update
    place = Place.find(params[:id])
    if place.update(place_params)
      redirect_to place
    else
      render :edit
    end
  end

  def destroy
    places = Place.find(params[:id])
    place.destroy
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(
      :name,
      :history,
      :country_id,
      :region_id
    )
  end
end
