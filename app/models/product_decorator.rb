Product.class_eval do
  scope :with_speed, :conditions => ["tire_speed_code_id = ?", 5]
end
