class PersonnalitiesController < ApplicationController
  def index
    @personnalities = Personnality.all
    @skills = Skill.all
    @joinskills = Joinskill.all


  end

  def show
    @personnality = Personnality.find(params[:id])
    @booking = Booking.new
    @skills = Skill.all
    @joinskills = Joinskill.all

   @activeskills = Joinskill.where(personnality_id: @personnality.id)

  end

  def new
    @personnality = Personnality.new
    @skills = Skill.all
    @joinskills = Joinskill.all
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
    params.require(:personnality).permit(:description, :price, :rating, :photo, :name)
  end
end
