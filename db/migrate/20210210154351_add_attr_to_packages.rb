class AddAttrToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :operator, :string
    add_column :packages, :pricing, :integer
    add_column :packages, :promo, :string
  end
end
