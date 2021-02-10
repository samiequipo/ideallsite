class ChangePricingToString < ActiveRecord::Migration[6.0]
  def change
    change_column :packages, :pricing, :string
  end
end
