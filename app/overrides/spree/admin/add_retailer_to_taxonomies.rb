Deface::Override.new(virtual_path: 'spree/admin/taxonomies/_form',
					 name: 'add_retail_to_taxonomies',
					 insert_after: 'div[data-hook="admin_inside_taxonomy_form"]',
					 text: '<div data-hook="admin_taxonomies_form_add_retailer">
							    <%= f.field_container :retailer do %>
								        <%= f.label :retailer do %>
								          <%= f.check_box :retailer %> <%= Spree.t(:retailer) %>
								        <% end %>
								<% end %>
						    </div>',
					 disabled: false)