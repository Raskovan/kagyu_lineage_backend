class ChangeOrderColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :masters, :order, :order_id
  end
end
