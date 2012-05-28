Spree::Core::Engine.routes.prepend do
  get "settings/index"

  match "/setting_parameters/:id" => 'settings#set_parameter', :as => :setting_parameters
  # Add your extension routes here
end
