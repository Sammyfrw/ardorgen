class CharactersController < ApplicationController
  def index
    @characters = Character.order(created_at: :asc)
    @ethercrafts = Ethercraft.pluck(:name)
    @races = generate_race_series
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @races = Race.all
    @ethercrafts = Ethercraft.all
    @birthplaces = Country.all
    @birth_regions = Region.where("country_id = ?", Country.first.id)
  end

  def create
    character = Character.create(character_params)
    if character.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
    @races = Race.all
    @ethercrafts = Ethercraft.all
    @birthplaces = Country.all
    @birth_regions = Region.all
  end

  def update
    character = Character.find(params[:id])
    if character.update(character_params)
      redirect_to character
    else
      render :edit
    end
  end

  def update_character_form
    @birth_regions = Region.find("country_id = ?", params[:birthplace_id])
    respond_to do |format|
      format.js
    end
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :age,
      :gender,
      :race_id,
      :ethercraft_id,
      :birthplace_id,
      :birth_region_id,
      :image
    )
  end

  def generate_race_series
    races = Race.all
    ethercrafts = Ethercraft.all
    races.map do |race|
      race_ethercraft_array = ethercrafts.map do |ethercraft|
        Character.where(race_id: race.id, ethercraft_id: ethercraft.id).count
      end
      { name: race.name, data: race_ethercraft_array }
    end
  end
end
