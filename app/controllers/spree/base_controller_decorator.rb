Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings, :if => proc { !session[:idioma] }

  protected
  def myapp_force_get_settings
    render 'settings/new'
  end 
  
end
