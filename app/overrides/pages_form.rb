Deface::Override.new(virtual_path: "spree/admin/pages/_form",
                     name: "pages_retail",
                     insert_before: "erb[loud]:contains('f.field_container :render_layout_as_partial do')",
                     text: "<%= f.field_container :retailer do %>
                          		<%= f.check_box :retailer %>
                          		<%= f.label :retailer %>
                        	<% end %>")