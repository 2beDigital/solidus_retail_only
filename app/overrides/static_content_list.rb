Deface::Override.new(virtual_path: "spree/static_content/_static_content_list",
                     name: "pages_list_retail_if",
                     insert_before: "erb[silent]:contains('if page.foreign_link.present?')",
                     text: "<% if (!page.retailer or (spree_current_user and
                                  (spree_current_user.has_spree_role? (:admin) or spree_current_user.has_spree_role? ('retail'))))%>")

Deface::Override.new(virtual_path: "spree/static_content/_static_content_list",
                     name: "pages_list_retail_end",
                     insert_after: "erb[silent]:contains('end')",
                     text: "<% end %>")