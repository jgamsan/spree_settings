class Spree::SettingsController < Spree::BaseController
 
  def new
    @valor = Spree::Setting.new
  end

  def create
    @valor = Spree::Setting.new(params[:setting])
  end
  
  def set_flag
    session[:locale] = params[:id]
    session[:vat] = 1.18
    redirect_to('/', :notice => t('spree.settings.notices.success'))
  end
end
