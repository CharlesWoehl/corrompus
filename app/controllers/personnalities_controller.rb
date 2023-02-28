class PersonnalitiesController < ApplicationController
  def index
    @personnalities = Personnality.all
  end

  def show
    @personnality = Personnality.find(params[:id])
    @booking = Booking.new
  end

  def new
    @personnality = Personnality.new
  end

  def create
    @personnality = Personnality.new(personnality_params)
    @personnality.user = current_user
    @personnality.save
    redirect_to personnality_path(@personnality)
  end

  def edit
    @personnality = Personnality.find(params[:id])
  end

  def update
    @personnality = Personnality.find(params[:id])
    @personnality.update(personnality_params)
    redirect_to personnality_path(@personnality)
  end

  def destroy
    @personnality = Personnality.find(params[:id])
    @personnality.destroy
    redirect_to personnalities_path
  end

  private

  def personnality_params
    params.require(:personnality).permit(:category, :description, :skills, :date_disponibility, :price, :rating)
  end
end
