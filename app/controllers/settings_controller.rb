class SettingsController < ApplicationController
  def index
  end

  def new
    
  end
  
  def set
    session[:idioma] = "es"
  end
end
