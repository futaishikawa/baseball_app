CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIASEGMVNUKQE3SRVSY',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'rails-baseballapp-user-123'
  config.fog_public     = false
  config.cache_storage = :fog
end
