class PagesController < ApplicationController
  def home
    @personnalities = Personnality.all
    @skills = Skill.all
    @joinskills = Joinskill.all
  end

end
