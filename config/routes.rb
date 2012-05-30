Spree::Core::Engine.routes.draw do
  
  resources :settings,
    :controller => 'settings',
    :only => [:index] do
    member do
      get 'set_parameter'
    end
  end
   
  #match "/set_parameter/:id" => 'settings#set_parameter', :as => :setting_parameters
  # Add your extension routes here
end
