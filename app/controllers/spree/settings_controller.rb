class Spree::SettingsController < Spree::BaseController
  layout 'spree/layouts/initial'
  def index
    respond_to do |format|
      format.html { render :layout => 'spree/layouts/initial'}
    end
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to spree.products_url
  end
end
