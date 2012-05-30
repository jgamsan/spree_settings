Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    if session[:idioma].nil?
      redirect_to new_setting_url and return 
    end
  end 
  
end
