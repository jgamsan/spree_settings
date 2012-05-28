class SettingsController < ApplicationController
  def index
  end

  def new
    
  end
  
  def set_parameter
    session[:idioma] = "es"
  end
end
