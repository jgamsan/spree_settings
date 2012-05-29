Spree::Core::Engine.routes.draw do
  
  resources :settings,
    :controller => 'settings',
    :only => [:index]
   
  # match "/setting_parameters/:id" => 'settings#set_parameter', :as => :setting_parameters
  # Add your extension routes here
end
