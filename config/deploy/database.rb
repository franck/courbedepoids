before "deploy:setup", "db:configure"
after "deploy:update_code", "db:symlink"

set(:database_username, "root")
set(:database_password, "")
set(:development_database) { application + "_dev" }
set(:test_database) { application + "_test" }
set(:production_database) { application + "_production" }

namespace :db do
  desc "Create database yaml in shared path"
  task :configure do
    set :database_password do
      Capistrano::CLI.password_prompt "Database Password: "
    end
    
    db_config = <<-EOF
base: &base
  adapter: mysql2
  encoding: utf8
  username: #{database_username}
  password: #{database_password}

development:
  database: #{development_database}
  <<: *base

test:
  database: #{test_database}
  <<: *base

production:
  database: #{production_database}
  <<: *base
    EOF

    run "mkdir -p #{shared_path}/config"
    put db_config, "#{shared_path}/config/database.yml"
  end

  desc "Make symlink for database yaml"
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{latest_release}/config/database.yml"
  end
end
