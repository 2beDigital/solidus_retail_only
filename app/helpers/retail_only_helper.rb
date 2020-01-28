module Spree::RetailOnlyHelper
	def is_retailer?
    (try_spree_current_user and try_spree_current_user.has_spree_role? :retail) ? true : false
  end
end