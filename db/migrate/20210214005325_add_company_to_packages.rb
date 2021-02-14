class AddCompanyToPackages < ActiveRecord::Migration[6.0]
  def change
    add_reference :packages, :company, foreign_key: true
  end
end
