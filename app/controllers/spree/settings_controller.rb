class Spree::SettingsController < Spree::BaseController
  
  def index
    respond_to do |format|
      format.html { render :layout => 'initial'}
    end
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to spree.products_url
  end
end
