Spree::Ability.register_ability(RetailAbility)
Spree::PermittedAttributes.product_attributes << :retail_only
Spree::Role.find_or_create_by(name: 'retail')
Spree::PermittedAttributes.user_attributes << :applyforretailer
Spree::PaymentMethod::DISPLAY.push(:retail_only, :not_retail_only)
#TODO Spree::ShippingMethod::DISPLAY.push(:retail_only, :not_retail_only)