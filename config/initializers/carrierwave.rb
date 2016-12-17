CarrierWave.configure do |config|
	config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: Settings.aws_s3_region
  }
  config.fog_directory = Settings.aws_s3_bucket

	config.ignore_integrity_errors = false
	config.ignore_processing_errors = false
	config.ignore_download_errors = false
end