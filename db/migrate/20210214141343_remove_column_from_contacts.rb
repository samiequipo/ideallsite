class RemoveColumnFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :last_name, :string
  end
end
