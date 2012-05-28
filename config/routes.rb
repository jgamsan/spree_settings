Spree::Core::Engine.routes.append do
  get "settings/index"

  get "settings/new"
  
  match 'settings/:id' => 'spree/settings#set', :as => :setting_parameters
  # Add your extension routes here
end
