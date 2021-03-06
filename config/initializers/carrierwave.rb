require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id:      ENV.fetch('AWS_ACCESS_KEY_ID'),
      aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      region: ENV.fetch('AWS_REGION') # Required
    }

    config.fog_directory  = ENV.fetch('S3_BUCKET_NAME')
    config.cache_storage = :fog
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/takefood'
  end
end