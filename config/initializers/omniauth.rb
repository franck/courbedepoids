Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '317145688308910', '9dc1f2d261a875663a3a97745ced655d'
end