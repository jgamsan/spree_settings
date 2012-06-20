class Spree::SettingsController < Spree::BaseController
 
  def new
    @valor = Spree::Setting.new
  end

  def create
    #@valor = Spree::Setting.new(params[:setting])
    prueba = params.select{|k,v| k =~ /.x/}
    case prueba.keys.first[0]
      when "0"
        session[:locale] = "es"
      when "1"
        session[:locale] = "en"
    end
    redirect_to('/', :notice => t('spree.settings.notices.success'))
  end
  
  def set_flag
    session[:locale] = params[:id]
    session[:vat] = 1.18
    
  end
end
