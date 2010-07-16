ActionController::Routing::Routes.draw do |map|
  map.resources :core_services, :collection => {:reset_config => :post}
end
