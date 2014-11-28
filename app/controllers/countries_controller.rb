class CountriesController < ApplicationController
  def index
    @countries = Country.order(name: :desc)
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    country = Country.create(country_params)
    if country.save
      redirect_to country
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    country = Country.find(params[:id])
    if country.update(country_params)
      redirect_to country
    else
      render :edit
    end
  end

  private

  def country_params
    params.require(:country).permit(
      :name,
      :age,
      :year_established,
      :demonym,
      :language,
      :history,
      :flag
    )
  end
end
