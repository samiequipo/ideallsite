class RemoveFkToContacts < ActiveRecord::Migration[6.0]
  def change
    remove_reference :contacts, :region, foreign_key: true
    remove_reference :contacts, :company, foreign_key: true
  end
end
