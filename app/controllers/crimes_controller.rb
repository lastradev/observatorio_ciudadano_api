# frozen_string_literal: true

class CrimesController < ApplicationController
  before_action :set_crime, only: %i[show]

  # GET /crimes
  def index
    send_file('public/assets/crimes.csv', filename: 'crimes.csv', type: 'text/csv')
  end

  # GET /crimes/1
  def show
    render json: @crime
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_crime
    @crime = Crime.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def crime_params
    params.require(:crime).permit(
      %i[ year state_id state city_id city affected_legal_asset crime_type
          crime_subtype modality january_count february_count march_count
          april_count may_count june_count july_count august_count
          september_count october_count november_count december_count ]
    )
  end
end
