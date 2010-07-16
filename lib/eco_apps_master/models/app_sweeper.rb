class AppSweeper < ActionController::Caching::Sweeper
  observe App

  def after_create(obj)
    expire_cache_for(obj)
  end

  def after_destroy(obj)
    expire_cache_for(obj)
  end

  def after_update(obj)
    expire_cache_for(obj)
  end

  private
  def expire_cache_for(obj)
    expire_action(url_for(:controller => '/core_services', :action => 'show', :id=>obj.name, :format=>"xml"))
  end
end