class Spree::SettingsController < Spree::BaseController
  layout 'application'
  def index
    
  end
  
  def new
    
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to products_url
  end
end
