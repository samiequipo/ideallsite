class RemoveDescriptionFromTypes < ActiveRecord::Migration[6.0]
  def change
    remove_column :types, :description, :string
  end
end
