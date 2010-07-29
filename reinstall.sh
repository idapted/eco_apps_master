#/bin/bash 

env="development"
if [ $# -gt 0 ]; then
	env=$1
fi

sudo gem uninstall eco_apps_master -I
gem build eco_apps_master.gemspec
sudo gem install --no-rdoc --no-ri eco_apps_master-0.1.0.gem
