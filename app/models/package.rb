class Package < ApplicationRecord
  has_many :contacts
  belongs_to :type, optional: true
end
