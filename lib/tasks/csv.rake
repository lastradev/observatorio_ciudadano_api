# frozen_string_literal: true

namespace :csv do
  desc 'Downloads the crimes CSV'
  task download: :environment do
    CsvDownloaderService.call
  end

  desc 'Imports the crimes CSV to the database'
  task import: :environment do
    CsvImporterService.call
  end
end
