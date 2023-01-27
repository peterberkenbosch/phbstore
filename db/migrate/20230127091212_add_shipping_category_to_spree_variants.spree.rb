# This migration comes from spree (originally 20221123152807)
class AddShippingCategoryToSpreeVariants < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_reference :spree_variants, :shipping_category, index: {algorithm: :concurrently}, _uses_legacy_reference_index_name: true
  end
end
