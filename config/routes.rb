Spree::Core::Engine.routes.draw do
  get "settings/index"

  get "settings/new"
  #get '/:retailer_type_id' => 'retailers#index', :as => :retailer_type
  get "/:setting_id" => "settings#set", :as => :setting_parameters
  
  # Add your extension routes here
end
