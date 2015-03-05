class SolarSystemsController < ApplicationController

  def index

    @solar_systems = SolarSystem.all

  end


end
