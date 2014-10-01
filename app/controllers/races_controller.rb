class RacesController < ApplicationController
  def index
    @races = Race.order(created_at: :asc)
  end

  def new
    @race = Race.new
  end

  def create
    race = Race.create(race_params)
    if race.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    race = Race.find(params[:id])
    if race.update(race_params)
      redirect_to action: "index"
    else
      render :edit
    end
  end

  private

  def race_params
    params.require(:race).permit(
      :name,
      :description,
      :evolution
    )
  end
end
