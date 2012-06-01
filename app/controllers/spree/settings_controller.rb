class Spree::SettingsController < Spree::BaseController
 layout 'initial'
  def index
    
  end
  
  def new
    respond_to do |format|
      format.html { render :layout => 'spree/layouts/initial' }
    end
  end

  def set_parameter
    session[:idioma] = params[:id]
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
