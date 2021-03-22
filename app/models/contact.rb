class Contact < ApplicationRecord
  before_save :letter_downcase
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # VALID_PHONE_REGEX = /\A\d+\z/
  
  validates :total_name, presence: true, length: {maximum: 50}
  validates :email, presence: true,  
  length: {maximum: 50}, format: { with: VALID_EMAIL_REGEX }
  validates :phone, phone: true

  # validates :phone, presence: true, numericality: { only_integer: true }, length: {minimum:9, maximum: 9},
  # format: { with: VALID_PHONE_REGEX }

  belongs_to :package, optional: true
  visitable

  def is_more?(contact)
    contact.visit.user.last.destroy if contact.visit.user.count > 3
  end
  
  private
    def letter_downcase 
      self.total_name = total_name.capitalize
      self.email = email.downcase
    end
end
