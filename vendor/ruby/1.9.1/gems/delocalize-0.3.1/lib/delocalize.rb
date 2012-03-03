require 'delocalize/ruby_ext'
require 'delocalize/i18n_ext'
require 'delocalize/localized_date_time_parser'

if defined?(Rails::Railtie)
  require 'delocalize/railtie'
elsif defined?(Rails::Initializer)
  raise "This version of delocalize is only compatible with Rails 3.0 or newer"
end
