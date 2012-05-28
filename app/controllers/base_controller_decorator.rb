Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    if session[:idioma].nil?
      redirect_to (:controller => "settings", :action => "set") and return
    end
  end 
  
end
