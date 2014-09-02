class CharactersController < ApplicationController
  def index
    @characters = Character.order(created_at: :desc)
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)
    if @character.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def character_params
    params.require(:character).permit(
      :name,
      :age,
      :gender,
      :race,
      :ethercraft,
      :birthplace
    )
  end
end
