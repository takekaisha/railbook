class AddUnitPriceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :unit_price, :integer
  end
end
