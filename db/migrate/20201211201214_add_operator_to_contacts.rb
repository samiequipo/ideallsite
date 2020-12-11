class AddOperatorToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :operator, :string
  end
end
