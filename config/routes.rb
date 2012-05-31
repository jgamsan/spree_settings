Spree::Core::Engine.routes.draw do
  
  resources :settings do
    member do
      get 'set_parameter'
    end
  end
   
end
