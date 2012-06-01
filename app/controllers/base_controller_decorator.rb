Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  protected
  def myapp_force_get_settings
    session[:idioma] = nil
    if session[:idioma].nil?
      render 'spree/settings/new'
    else
      redirect_to spree.root_url
    end
  end 
  
end
