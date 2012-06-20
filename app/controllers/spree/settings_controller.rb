class Spree::SettingsController < Spree::BaseController
 
  def new
    @valor = Spree::Setting.new
  end

  def create
    @velocidad = params[:setting][:velocidad]
    prueba = params.select{|k,v| k =~ /.x/}
    case prueba.keys.first.chop.chop
      when "0"
        session[:locale] = "es"
      when "1"
        session[:locale] = "en"
      when "11"
        session[:locale] = "fr"
    end
    @products = Product.with_speed
    #redirect_to("/products", :notice => t('spree.settings.notices.success'))
    render "shared/products", :products => @products, :taxon => @taxon
  end
  
  def set_flag
    session[:locale] = params[:id]
    session[:vat] = 1.18
    
  end
end
