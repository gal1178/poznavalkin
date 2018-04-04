role :app, %w(hosting_gal1178@cobalt.locum.ru)
role :web, %w(hosting_gal1178@cobalt.locum.ru)
role :db, %w(hosting_gal1178@cobalt.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
