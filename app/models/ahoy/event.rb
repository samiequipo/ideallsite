class Ahoy::Event < ApplicationRecord
  include Ahoy::QueryMethods

  self.table_name = "ahoy_events"

  belongs_to :visit, optional: true
  belongs_to :user, optional: true, class_name: "Contact"

  serialize :properties, JSON
end
