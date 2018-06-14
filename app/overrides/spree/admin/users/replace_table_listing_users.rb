Deface::Override.new(virtual_path: 'spree/admin/users/index',
                     name: 'replace_table_listing_users',
                     replace: "table#listing_users",
                     partial: 'spree/admin/shared/table_index_user_admin',
                     disable: false)