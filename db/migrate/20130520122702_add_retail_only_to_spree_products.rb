class AddRetailOnlyToSpreeProducts < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_products, :retail_only, :boolean, :default => false
  end
end
