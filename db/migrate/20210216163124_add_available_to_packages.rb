class AddAvailableToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :available, :boolean
  end
end
