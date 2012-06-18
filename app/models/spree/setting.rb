module Spree
  class Setting
    include ActiveModel::Conversion
    include ActiveModel::Validations
    attr_accessor :flag, :ancho, :perfil, :llanta, :velocidad, :ic, :fr, :tttl 
    
    FLAGS_LIST = Hash[1, Spain.png, 2, Portugal.png, 3, Germany.png, 4, Austria.png, 5, Belgium.png, 6, Nederland.png, 7, Luxembourg.png,
    8, Denmark.png, 9, Switzerland.png, 10, Liechtenstein.png, 11, CzechRepublic.png, 12, France.png 13, Monaco.png, 14, UnitedKingdom.png, 15, Italy.png, 16, Slovenia.png,
    17, Sweden.png, 18, Ireland.png, 19, Poland.png, 20, Slovakia.png, 21, Hungary.png,
    22, Norway.png, 23, Finland.png, 24, Estonia.png, 25, latvia.png, 26, Lithuania.png, 27, BosniaHerzegovina.png, 28, Croatia.png, 29, Serbia.png, 30, Bulgaria.png, 31, Romania.png]
    
    def persisted?
      false
    end
  
  end
end
