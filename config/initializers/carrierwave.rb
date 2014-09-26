CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],                        # required
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],                        # required
  }

  if Rails.env.development?
    config.fog_directory  = "blue-shift-#{Rails.env}-#{ENV['DEVELOPER_NAME']}"
  elsif  Rails.env.production?
    config.fog_directory  = "blue-shift-#{Rails.env}"
  end                    # required
end
