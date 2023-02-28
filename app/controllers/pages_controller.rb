class PagesController < ApplicationController
  def home
    @personnalities = Personnality.all
  end
end
