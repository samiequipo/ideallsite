class AddVisitIdToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :visit_id, :bigint
  end
end
