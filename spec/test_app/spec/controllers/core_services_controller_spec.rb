require File.join(File.dirname(__FILE__), '../spec_helper')

describe CoreServicesController do

  #Delete this example and add some real ones
  it "should reset config" do
    post :reset_config, :app => {:name => "test", :url => "http://www.test.com"}
    App.first.name.should == "test"
  end

end
