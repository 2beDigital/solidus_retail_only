class AddRetailToSpreeTaxonomy < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_taxonomies, :retailer, :boolean, default: false
  end
end
