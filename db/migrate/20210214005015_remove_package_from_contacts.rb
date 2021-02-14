class RemovePackageFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :contacts, :package, foreign_key: true
  end
end
