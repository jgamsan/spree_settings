class Spree::SettingsController < Spree::BaseController
  respond_to :html
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
    #@products = Spree::Product.joins(:variants_including_master).where("spree_variants.tire_speed_code_id = ?", 7)
    @searcher = Spree::Config.searcher_class.new(:tire_speed_code_id => 7)
    @products = @searcher.retrieve_products
    #redirect_to("/products", :notice => t('spree.settings.notices.success'))
    render :partial => "spree/shared/products", :locals => { :products => @products, :taxon => @taxon }
    #respond_with(@products)
  end
  
  def set_flag
    session[:locale] = params[:id]
    session[:vat] = 1.18
    
  end
end
