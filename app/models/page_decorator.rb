Spree::Page.class_eval do
	scope :retail, -> { where(:retailer => true) }
  	scope :not_retail, -> { where(:retailer => false) }
end