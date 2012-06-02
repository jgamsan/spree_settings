class Spree::SettingsController < Spree::BaseController
 
  def new
    @setting = Spree::Setting.new
  end

  def create
    
  end
  
  def set_flag
    session[:idioma] = params[:id]
    session[:vat] = 1.18
    redirect_to('/', :notice => t('spree.contact_us.notices.success'))
  end
end
