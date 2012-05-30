class Spree::SettingsController < Spree::BaseController
  layout 'initial'
  def index
    
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to spree.products_url
  end
end
