CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJ2UYECZMKBQOOI3A',                        # required
    aws_secret_access_key: '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'                        # required
  }
  config.fog_directory  = 'mynewyelpapp'                          # required
end
