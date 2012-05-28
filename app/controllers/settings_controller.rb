class Spree::SettingsController < Spree::BaseController
  def index
  end

  def new
    
  end
  
  def set_parameter
    session[:idioma] = "es"
  end
end
