Spree::Core::Engine.routes.prepend do
  
  get "spree/settings/index"
   
  match "/setting_parameters/:id" => 'spree/settings#set_parameter', :as => :setting_parameters
  # Add your extension routes here
end
