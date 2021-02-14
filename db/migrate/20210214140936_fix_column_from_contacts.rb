class FixColumnFromContacts < ActiveRecord::Migration[6.0]
  def change
    rename_column :contacts, :first_name, :total_name
  end
end
