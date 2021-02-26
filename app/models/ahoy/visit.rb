class Ahoy::Visit < ApplicationRecord
  self.table_name = "ahoy_visits"

  has_many :events, class_name: "Ahoy::Event"
  belongs_to :user, optional: true
  has_many :user, class_name: "Contact"

  def click_to_phone(value)
    self.update(pc_phone: value)
    return nil
  end
end
