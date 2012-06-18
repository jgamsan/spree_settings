class Spree::NewsController < Spree::BaseController
  def new
    @paperline = Spree::New.new
  end

  def create
  end
end
