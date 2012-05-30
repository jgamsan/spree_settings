Spree::BaseController.class_eval do
  
  before_filter :myapp_force_get_settings

  def myapp_force_get_settings
    redirect_to new_user_session_url and return 
  end 
  
end
