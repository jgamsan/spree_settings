class Spree::SettingsController < Spree::BaseController
  
  def index
    respond_to do |format|
      format.html 
    end
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to spree.products_url
  end
end
