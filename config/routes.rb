Spree::Core::Engine.routes.draw do
  resources :settings, :controller => 'settings', :only => [:new, :create, :index] do
    member do
      get 'set_flag'
    end
  end
  match 'set-initial' => 'settings#new', :as => :set_initial
end
