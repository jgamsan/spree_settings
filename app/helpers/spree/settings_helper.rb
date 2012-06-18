module Spree::SettingsHelper
  def submit_flags(id)
    submit t('.submit'), :id => id, :type => :image, :src => "/assets/#{Spree::Setting::FLAGS_LIST[id]}", :height => "30", :width => "40"
  end

end
