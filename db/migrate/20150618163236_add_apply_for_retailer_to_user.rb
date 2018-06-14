class AddApplyForRetailerToUser < SolidusSupport::Migration[4.2]
  def change
    add_column :spree_users, :applyforretailer, :boolean, :default => false
  end
end
