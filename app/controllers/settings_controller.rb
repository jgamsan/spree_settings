class SettingsController < ApplicationController
  def index
  end

  def new
    session[:idioma] = "es"
  end
end
