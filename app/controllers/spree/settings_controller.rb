class Spree::SettingsController < Spree::BaseController
 
  def new
    @widths = Spree::TireWidth.all
    @profiles = Spree::TireProfile.all
    @innertubes = Spree::TireInnertube.all
    @speeds = Spree::TireSpeedCode.all
    @ics = Spree::TireIc.all
    @frs = Spree::TireFr.all
    @tttls = Spree::TireTttl.all
    render :layout => 'spree/layouts/spree_application'
  end
  
  def index
    prueba = params.select{|k,v| k =~ /.x/}
    session[:locale] = Spree::Setting::FLAGS_LIST_NEW[prueba.keys.first.chop.chop.to_i][3]
    @searcher = Spree::Config.searcher_class.new(params)
    @products = @searcher.retrieve_products
    render "spree/home/index", :products => @products, :taxon => @taxon
  end
  
  def update_tires_select
    sql = ""
    sql = sql + " and tire_width_id = #{params[:iw]}" unless params[:iw] == "0"
    sql = sql + " and tire_profile_id = #{params[:ip]}" unless params[:ip] == "0"
    sql = sql + " and tire_innertube_id = #{params[:ii]}" unless params[:ii] == "0"
    sql = sql + " and tire_ic_id = #{params[:ic]}" unless params[:ic] == "0"
    sql = sql + " and tire_speed_code_id = #{params[:is]}" unless params[:is] == "0"
    sql = sql + " and tire_fr_id = #{params[:if]}" unless params[:if] == "0"
    sql = sql + " and tire_tttl_id = #{params[:it]}" unless params[:it] == "0"
    tires = Spree::Variant.find_by_sql("SELECT tire_width_id, tire_profile_id, tire_innertube_id, tire_ic_id, tire_speed_code_id, tire_fr_id, tire_tttl_id, is_master
     FROM spree_variants where is_master = 't'" + sql + " group by tire_width_id, tire_profile_id, tire_innertube_id, tire_ic_id, tire_speed_code_id, tire_fr_id, tire_tttl_id, is_master;")
    widths = tires.map {|x| x.tire_width_id}.flatten.uniq
    profiles = tires.map {|x| x.tire_profile_id}.flatten.uniq
    innertubes = tires.map {|x| x.tire_innertube_id}.flatten.uniq
    ics = tires.map {|x| x.tire_ic_id}.flatten.uniq
    speed_codes = tires.map {|x| x.tire_speed_code_id}.flatten.uniq
    frs = tires.map {|x| x.tire_fr_id}.flatten.uniq
    tttls = tires.map {|x| x.tire_tttl_id}.flatten.uniq
    tires = [widths, profiles, innertubes, ics, speed_codes, frs, tttls]
    render :partial => "tires", :locals => { :tires => tires}
  end
end
