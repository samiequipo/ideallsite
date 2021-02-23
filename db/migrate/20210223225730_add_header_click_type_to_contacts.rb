class AddHeaderClickTypeToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :header_click_type, :string
  end
end
