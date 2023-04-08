# frozen_string_literal: true

class CrimesController < ApplicationController
  def index
    @crimes = crimes
  end

  def count
    count = crimes.year_count

    render json: count
  end

  def robberies
    robberies = crimes.robberies

    render json: robberies
  end

  def download
    send_file(
      CsvDownloaderService::FILE_PATH,
      filename: CsvDownloaderService::FILE_NAME,
      type: CsvDownloaderService::FILE_TYPE
    )
  end

  private

  def crime_params
    params.permit(
      %i[year state_id state city_id city affected_legal_asset crime_type
         crime_subtype modality january_count february_count march_count
         april_count may_count june_count july_count august_count
         september_count october_count november_count december_count]
    )
  end

  def crimes
    Crime.where(crime_params)
  end
end
