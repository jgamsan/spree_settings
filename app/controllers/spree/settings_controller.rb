class Spree::SettingsController < Spree::BaseController
  layout 'spree/layouts/initial'
  def index
    
  end
  
  def new
    
  end

  def set_parameter
    session[:idioma] = params[:id]
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end
end
