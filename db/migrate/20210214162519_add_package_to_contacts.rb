class AddPackageToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :package, foreign_key: true
  end
end
