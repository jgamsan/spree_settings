module Spree
  class New
    include ActiveModel::Conversion
    include ActiveModel::Validations
    attr_accessor :title, :body
    
  end
end
