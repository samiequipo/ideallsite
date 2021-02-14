class RemoveColumnsFromPackages < ActiveRecord::Migration[6.0]
  def change
    remove_column :packages, :operator, :string
    remove_column :packages, :pricing, :string
    remove_column :packages, :promo, :string
  end
end
