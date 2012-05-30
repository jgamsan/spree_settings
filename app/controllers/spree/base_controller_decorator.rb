Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    redirect_to spree.products_url if session[:idioma].nil?
  end 
  
end
