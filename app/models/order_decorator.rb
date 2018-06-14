Spree::Order.class_eval do
  def is_first_product_retail_only?
    self.line_items.first.present? && self.line_items.first.product.retail_only
  end

  def available_payment_methods
    b2c_or_b2b =(is_first_product_retail_only?) ? :retail_only : :not_retail_only
    @available_payment_methods ||= (Spree::PaymentMethod.available(:front_end) + Spree::PaymentMethod.available(:both) + Spree::PaymentMethod.available(b2c_or_b2b.to_s)).uniq
  end
end
