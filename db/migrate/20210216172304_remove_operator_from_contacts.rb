class RemoveOperatorFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :operator, :string
  end
end
