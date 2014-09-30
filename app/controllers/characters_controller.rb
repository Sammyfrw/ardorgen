class CharactersController < ApplicationController
  def index
    @characters = Character.order(created_at: :asc)
    @ethercrafts = get_ethercrafts
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
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
  end

  def update
    character = Character.find(params[:id])
    if character.update(character_params)
      redirect_to character
    else
      render :edit
    end
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :age,
      :gender,
      :race,
      :ethercraft,
      :birthplace,
      :image
    )
  end

  def get_ethercrafts
    crafts = Ethercraft.all
    craft_names = []
    crafts.map do |craft|
      craft_names << craft.name
    end
    craft_names
  end
end
