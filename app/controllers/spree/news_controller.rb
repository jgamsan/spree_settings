class Spree::NewsController < ApplicationController
  def new
    @paperline = Spree::New.new
  end

  def create
  end
end
