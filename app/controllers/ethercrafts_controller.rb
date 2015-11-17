class EthercraftsController < ApplicationController

  before_action only: [:new, :create, :edit, :update, :destroy] do
    if current_user.role_is?("moderator")
    else
      redirect_to '/'
    end
  end

  def index
    @ethercrafts = Ethercraft.order(created_at: :asc)
  end

  def new
    @ethercraft = Ethercraft.new
  end

  def create
    ethercraft = Ethercraft.create(ethercraft_params)
    if ethercraft.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  def edit
    @ethercraft = Ethercraft.find(params[:id])
  end

  def update
    ethercraft = Ethercraft.find(params[:id])
    if ethercraft.update(ethercraft_params)
      redirect_to action: "index"
    else
      render :edit
    end
  end

  def destroy
    ethercraft = Ethercraft.find(params[:id])
    ethercraft.destroy
    redirect_to ethercrafts_path
  end

  private

  def ethercraft_params
    params.require(:ethercraft).permit(
      :name,
      :description
    )
  end
end
