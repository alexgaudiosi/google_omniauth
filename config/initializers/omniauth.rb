OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '527565189411.apps.googleusercontent.com', '0l1S3sD2bkpbiLnE581lyWou', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end