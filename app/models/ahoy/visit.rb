class Ahoy::Visit < ApplicationRecord
  self.table_name = "ahoy_visits"

  has_many :events, class_name: "Ahoy::Event"
  belongs_to :user, optional: true
  has_many :user, class_name: "Contact"

  # By extract Vodafone Package
  def auxiliar_package
    Type.where(plano: "Telemóvel").second.packages.first.id
  end
end
