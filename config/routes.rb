Spree::Core::Engine.routes.prepend do
  get "spree.settings/index"
  # match "/setting_index" => 'settings#index', :as => :setting_index
  match "/setting_parameters/:id" => 'settings#set_parameter', :as => :setting_parameters
  # Add your extension routes here
end
