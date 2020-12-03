class AddRegionToContacts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contacts, :region, foreign_key: true
  end
end
