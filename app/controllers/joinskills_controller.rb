class JoinskillsController < ApplicationController
  def new
    @joinskill = Joinskill.new
  end

  def create
    @joinskill = Joinskill.new(joinskill_params)
    if @joinskill.save
      redirect_to @joinskill
    else
      render 'new'
    end
  end
end
