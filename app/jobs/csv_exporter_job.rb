require_relative '../../lib/modules/csv_exporter'

class CsvExporterJob < ApplicationJob
  queue_as :default

  def perform
    file = CsvExporter.export_results
    NotificationMailer.csv_exported_email(file).deliver_now
  end
end
