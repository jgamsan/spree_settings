class Spree::SettingsController < Spree::BaseController
  layout 'initial'
  def index
    
  end
  
  def new
    
  end

  def set_parameter
    session[:idioma] = params[:id]
    redirect_to products_url
  end
end
