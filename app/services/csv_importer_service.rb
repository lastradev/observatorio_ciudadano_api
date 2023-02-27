# frozen_string_literal: true

class CsvImporterService
  FILE_ENCODING = 'iso-8859-1'
  KEY_TRANSLATIONS = {
    año: :year,
    clave_ent: :state_id,
    entidad: :state,
    'cve._municipio': :city_id,
    municipio: :city,
    bien_jurídico_afectado: :affected_legal_asset,
    tipo_de_delito: :crime_type,
    subtipo_de_delito: :crime_subtype,
    modalidad: :modality,
    enero: :january_count,
    febrero: :february_count,
    marzo: :march_count,
    abril: :april_count,
    mayo: :may_count,
    junio: :june_count,
    julio: :july_count,
    agosto: :august_count,
    septiembre: :september_count,
    octubre: :october_count,
    noviembre: :november_count,
    diciembre: :december_count
  }.freeze

  def self.call
    new.call
  end

  def call
    import_csv
  end

  private

  def import_csv
    SmarterCSV.process(CsvDownloaderService::FILE_PATH, options) do |chunk|
      chunk.each { |row| import_row(row) }
    end
  end

  def options
    { file_encoding: FILE_ENCODING, key_mapping: KEY_TRANSLATIONS }
  end

  def import_row(row)
    return unless ["Tampico", "Altamira", "Ciudad Madero"].include?(row[:city])

    Crime.create!(row)
  end
end
