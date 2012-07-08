Spree::Core::Engine.routes.draw do
  resources :news,
    :controller => "news",
    :only => [:new, :create]
  match 'new-us' => 'news#new', :as => :new_us
  resources :settings,
    :controller => 'settings',
    :only => [:new, :create, :index]
  match 'set-initial' => 'settings#new', :as => :set_initial
  match 'settings/update_tires_select/:iw/:ip/:ii/:ic/:is/:if/:it' => 'settings/#update_tires_select'
end
