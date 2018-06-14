Deface::Override.new(virtual_path: "spree/admin/products/_form",
                     insert_after: "[data-hook='admin_product_form_promotionable']",
                     name: "products_retail_only",
                     text: "<div data-hook='admin_product_form_retail'>
	                            <%= f.field_container :retail_only do %>
	                                    <%= f.label :retail_only do %>
	                                      <%= f.check_box :retail_only %> <%= Spree.t(:retail_only) %>
	                                    <% end %>
	                            <% end %>
                            </div>")




