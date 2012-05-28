Spree::Core::Engine.routes.append do
  get "settings/index"

  get "settings/new"
  
  get "settings/set"
  

  # Add your extension routes here
end
