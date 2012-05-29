class Spree::SettingsController < Spree::BaseController
  layout 'initial'
  def index
  end

  def set_parameter
    session[:idioma] = "es"
    redirect_to spree.pproducts_url
  end
end
