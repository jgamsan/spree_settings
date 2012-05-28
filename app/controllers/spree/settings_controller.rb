class Spree::SettingsController < Spree::BaseController
  def index
  end

  def set_parameter
    session[:idioma] = "es"
  end
end
