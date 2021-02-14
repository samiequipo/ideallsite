class RemoveCompanyFromPackages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :packages, :company, foreign_key: true
  end
end
