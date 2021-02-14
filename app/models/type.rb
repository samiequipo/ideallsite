class Type < ApplicationRecord
  has_many :packages
  belongs_to :company
end
