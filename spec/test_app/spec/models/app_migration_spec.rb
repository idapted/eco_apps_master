require File.join(File.dirname(__FILE__), '../spec_helper')

describe "app_migration" do
  it "should set up app table if it doesn't exist" do
    require 'eco_apps_master'
    App.should be_table_exist
  end 
end 

