class PersonnalitiesController < ApplicationController
  def index
    @personnalities = policy_scope(Personnality)
    @personnalities = Personnality.all
  end

  def show
    @personnality = Personnality.find(params[:id])
    authorize @personnality
  end

  def new
    @personnality = Personnality.new
    authorize @personnality
  end

  def create
    @personnality = Personnality.new(personnality_params)
    @personnality.user = current_user
    authorize @personnality
    @personnality.save
    redirect_to personnality_path(@personnality)
  end

  def edit
    @personnality = Personnality.find(params[:id])
    authorize @personnality
  end

  def update
    authorize @personnality
    @personnality = Personnality.find(params[:id])
    @personnality.update(personnality_params)
    redirect_to personnality_path(@personnality)
  end

  def destroy
    authorize @personnality
    @personnality = Personnality.find(params[:id])
    @personnality.destroy
    redirect_to personnalities_path
  end

  private

  def personnality_params
    params.require(:personnality).permit(:category, :description, :skills, :date_disponibility)
  end
end
