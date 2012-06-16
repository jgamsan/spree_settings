Spree::Core::Engine.routes.draw do
  resources :settings,
    :controller => 'settings',
    :only => [:new, :create]
  match 'set-initial' => 'settings#new', :as => :set_initial
end
