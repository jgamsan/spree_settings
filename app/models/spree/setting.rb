module Spree
  class Setting
    include ActiveModel::Conversion
    include ActiveModel::Validations
    attr_accessor :flag, :ancho, :perfil, :llanta, :velocidad, :ic, :fr, :tttl 
    
    FLAGS_LIST = %w[Spain.png Portugal.png Germany.png Austria.png Belgium.png Nederland.png Luxembourg.png
    Denmark.png Switzerland.png Liechtenstein.png CzechRepublic.png France.png Monaco.png UnitedKingdom.png Italy.png Slovenia.png
    Sweden.png Ireland.png Poland.png Slovakia.png Hungary.png
    Norway.png Finland.png Estonia.png latvia.png Lithuania.png BosniaHerzegovina.png Croatia.png Serbia.png Bulgaria.png Romania.png]
    
    def persisted?
      false
    end
  
  end
end
