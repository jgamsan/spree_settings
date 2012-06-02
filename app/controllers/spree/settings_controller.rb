class Spree::SettingsController < Spree::BaseController
 
  def new
    @setting = Spree::Setting.new
  end

  def set_parameter
    session[:idioma] = params[:id]
    respond_to do |format|
      format.html { redirect_to spree.root_url }
    end
  end
end
