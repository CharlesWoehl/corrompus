class PersonnalitiesController < ApplicationController
  def index
    @personnalities = Personnality.all
  end

  def show
    @personnality = Personnality.find(params[:id])
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
  end

  private

  def personnality_params
    params.require(:personnality).permit(:category, :description, :skills, :date_disponibility, :user_id)
  end
end
