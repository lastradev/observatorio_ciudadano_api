class HomeController < ApplicationController
  def index
    render json: 'Observatorio Ciudadano API.'
  end
end
