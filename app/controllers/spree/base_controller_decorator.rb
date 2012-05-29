Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    if session[:idioma].nil?
      redirect_to spree.settings_url and return
    end
  end 
  
end
