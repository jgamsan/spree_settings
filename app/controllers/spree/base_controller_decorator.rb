Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings, :if session[:idioma].nil?

  protected
  def myapp_force_get_settings
    redirect_to spree.products_url
  end 
  
end
