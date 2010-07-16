class App < ActiveRecord::Base

  def before_save
    self.url= (self.url.blank? ? "/#{self.name}" : self.url)
  end

end
