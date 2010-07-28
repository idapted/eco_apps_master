class CoreServicesController < ActionController::Base
  caches_action :show
  cache_sweeper :app_sweeper, :only => [:reset_config]
  ip_limited_access

  def reset_config
    app = App.find_or_create_by_name(params[:app][:name])
    app.attributes = params[:app]
    app.save
    render :xml => "<info>ok</info>", :status => :ok
  end

  def show
    app = App.find_by_name(params[:id])
    render :xml => (app.blank? ? {:error => "not exist"} : app).to_xml
  end

end
