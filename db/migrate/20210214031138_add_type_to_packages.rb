class AddTypeToPackages < ActiveRecord::Migration[6.0]
  def change
    add_reference :packages, :type, null: false, foreign_key: true
  end
end
