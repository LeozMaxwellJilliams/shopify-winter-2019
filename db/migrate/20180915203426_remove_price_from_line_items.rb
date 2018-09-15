class RemovePriceFromLineItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :line_items, :price, :decimal
  end
end
