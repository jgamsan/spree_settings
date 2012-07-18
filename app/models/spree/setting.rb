module Spree
  class Setting
    include ActiveModel::Conversion
    include ActiveModel::Validations
    attr_accessor :flag, :ancho, :perfil, :llanta, :velocidad, :ic, :fr, :tttl 
    
    FLAGS_LIST = %w[Spain.png Portugal.png Germany.png Austria.png Belgium.png Nederland.png Luxembourg.png
    Denmark.png Switzerland.png Liechtenstein.png CzechRepublic.png France.png Monaco.png UnitedKingdom.png Italy.png Slovenia.png
    Sweden.png Ireland.png Poland.png Slovakia.png Hungary.png
    Norway.png Finland.png Estonia.png latvia.png Lithuania.png BosniaHerzegovina.png Croatia.png Serbia.png Bulgaria.png Romania.png]
    
    FLAGS_LIST_NEW = {0 => {1 => 'Spain.png', 2 => 'es', 3 => 'es'}, 1 => {1 => 'Portugal.png', 2 => 'pt-PT', 3 => 'pt'}, 2 => {1 => 'Germany.png', 2 => 'de', 3 => 'de'}, 3 => {1 => 'Austria.png', 2 => 'at', 3 => 'at'}, 4 => {1 => 'Belgium.png', 2 => 'nl-BE', 3 => 'be'}, 5 => {1 => 'Nederland.png', 2 => 'nl-NL', 3 => 'nl'}, 6 => {1 => 'Luxembourg.png', 2 => 'lu', 3 => 'lu'}, 7 => {1 => 'Denmark.png', 2 => 'dk', 3 => 'dk'}, 8 => {1 => 'Switzerland.png', 2 => 'ch', 3 => 'ch'}, 9 => {1 => 'Liechtenstein.png', 2 => 'li', 3 => 'li'}, 10 => {1 => 'CzechRepublic.png', 2 => 'cz', 3 => 'cz'}, 11=> {1 => 'France.png', 2 => 'fr', 3 => 'fr'}, 12 => {1 => 'Monaco.png', 2 => 'mc', 3 => 'mc'}, 13 => {1 => 'UnitedKingdom.png', 2 => 'en-GB', 3 => 'gb'}, 14 => {1 => 'Italy.png', 2 => 'it', 3 => 'it'}, 15 => {1 => 'Slovenia.png', 2 => 'si', 3 => 'si'}, 16 => {1 => 'Sweden.png', 2 => 'se', 3 => 'se'}, 17 => {1 => 'Ireland.png', 2 => 'ie', 3 => 'ie'}, 18 => {1 => 'Poland.png', 2 => 'pl', 3 => 'pl'}, 19 => {1 => 'Slovakia.png', 2 => 'sk', 3 => 'sk'}, 20 => {1 => 'Hungary.png', 2 => 'hu', 3 => 'hu'}, 21 => {1 => 'Norway.png', 2 => 'no', 3 => 'no'}, 22 => {1 => 'Finland.png', 2 => 'fi', 3 => 'fi'}, 23 => {1 => 'Estonia.png', 2 => 'ee', 3 => 'ee'}, 24 => {1 => 'latvia.png', 2 => 'lv', 3 => 'lv'}, 25 => {1 => 'Lithuania.png', 2 => 'lt', 3 => 'lt'}, 26 => {1 => 'BosniaHerzegovina.png', 2 => 'ba', 3 => 'ba'}, 27 => {1 => 'Croatia.png', 2 => 'hr', 3 => 'hr'}, 28 => {1 => 'Serbia.png', 2 => 'rs', 3 => 'rs'}, 29 => {1 => 'Bulgaria.png', 2 => 'bg', 3 => 'bg'}, 30 => {1 => 'Romania.png', 2 => 'ro', 3 => 'ro'}}
    
    def persisted?
      false
    end
  
  end
end
