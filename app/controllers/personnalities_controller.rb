class PersonnalitiesController < ApplicationController
  def index
    @personnalities = Personnality.all
    @skills = Skill.all
    @joinskills = Joinskill.all
    if params[:category].present?
      sql_query = <<~SQL
        skills.name ILIKE :query
      SQL
      @personnalities = Personnality.joins(:skills).where(sql_query, query: "%#{params[:category]}%")
    else
      @personnalities = Personnality.all
    end
  end

  def show
    @personnality = Personnality.find(params[:id])
    @personnality_skills = @personnality.skills
    @booking = Booking.new
    @skills = Skill.all

  end

  def new
    @personnality = Personnality.new
    @skills = Skill.all
    @joinskills = Joinskill.all
  end

  def create
    @personnality = Personnality.new(personnality_params)
    @skills = params[:personnality][:skill_ids]
    @personnality.user = current_user
    @skills.each do |skill|
      unless skill == "" || skill.length > 4
        Joinskill.find_or_create_by(personnality: @personnality, skill_id: skill.to_i)
      end
    end
    @personnality.save
    redirect_to personnality_path(@personnality)
  end

  def edit
    @personnality = Personnality.find(params[:id])
  end

  def update
    @personnality = Personnality.find(params[:id])
    @skills = params[:personnality][:skill_ids]
    # Suppression des joinskill non selectionnés
    @personnality.joinskills.each do |skill|
      unless @skills.include?(skill.skill_id.to_s)
        skill.destroy
      end
    end
    @skills.each do |skill|
      unless skill == "" || skill.length > 4
        Joinskill.find_or_create_by(personnality: @personnality, skill_id: skill.to_i)
      end
    end
    @personnality.update(personnality_params)
    redirect_to personnality_path(@personnality)
  end

  def destroy
    @personnality = Personnality.find(params[:id])
    @personnality.destroy
    redirect_to bookings_path
  end

  private

  def personnality_params
    params.require(:personnality).permit(:description, :price, :rating, :photo, :name, :punchline, :skills)
  end
end
