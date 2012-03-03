Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env == "production"
    provider :facebook, '175076642604675', '71888ffd6df1cdab3374ae9ab88df940'
  else
    provider :facebook, '317145688308910', '9dc1f2d261a875663a3a97745ced655d'
  end
end
