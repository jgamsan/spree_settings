Spree::Core::Engine.routes.append do
  get "settings/index"

  get "settings/new"
  match "settings/set/:id" => "settings#set"
  
  # Add your extension routes here
end
