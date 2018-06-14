class AddRetailerToPages < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_pages, :retailer, :boolean, default: false
  end
end
