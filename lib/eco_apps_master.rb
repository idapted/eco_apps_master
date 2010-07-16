require 'rubygems'
require 'active_record'
require 'action_controller'

require 'eco_apps_master/models/app'
require 'eco_apps_master/models/app_sweeper'
require 'eco_apps_master/models/app_migration'

require 'eco_apps_master/controllers/core_services_controller'
ActionController::Routing::Routes.add_configuration_file(File.join(File.dirname(__FILE__),"eco_apps_master/controllers/routes.rb"))
