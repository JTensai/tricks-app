require 'carrierwave/storage/fog'
# This stuff stays so that old existing images still work
CarrierWave.configure do |config|
  if Rails.env.production? or Rails.env.development? #comment out the or if you are planning up testing upload
    config.fog_credentials = {
      :provider                         => 'Google',
      :google_storage_access_key_id     => Rails.application.credentials.google_storage[:access_key_id],
      :google_storage_secret_access_key => Rails.application.credentials.google_storage[:secret_access_key],
      # :persistent                       => false 
    }
    config.storage = :fog

    # config.fog_directory = Rails.application.credentials.google_storage[:default_bucket_name]
    # config.fog_attributes = { cache_control: "no-cache" }
  else
    config.storage = :file
    config.enable_processing = true
  end
end