require File.join(File.dirname(__FILE__), '../spec_helper')

describe "app" do
  it "should set url to '/:app_name' if it's null" do
    App.create(:name => "test", :url => "http://www.test.com").url.should == "http://www.test.com"
    App.create(:name => "test").url.should == "/test"
  end 
end 

