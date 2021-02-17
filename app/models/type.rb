class Type < ApplicationRecord
  has_many :packages
  belongs_to :company, optional: true
end
