class AddAttrToAhoyVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :ahoy_visits, :whatsapp, :boolean
    add_column :ahoy_visits, :pc_phone, :boolean
    add_column :ahoy_visits, :mobil_phone, :boolean
  end
end
