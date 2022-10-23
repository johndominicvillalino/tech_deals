class AddColumnToPromotion < ActiveRecord::Migration[7.0]
  def change
    add_column :promotions, :drop_to, :float
  end
end
