Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    session[:idioma] = nil
    if session[:idioma].nil?
      redirect_to spree.settings_path
    end
  end 
  
end
