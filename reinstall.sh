#/bin/bash 
sudo gem uninstall eco_apps_master
gem build eco_apps_master.gemspec
sudo gem install --no-rdoc --no-ri eco_apps_master-0.0.1.gem
