class Contact < ApplicationRecord
  before_save :letter_downcase
  #:operators?              
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d+\z/
  
  validates :first_name, presence: true, length: {minimum:2, maximum: 30}
  validates :last_name, presence: true, length: {minimum:2, maximum: 30} 
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
            length: {maximum: 50}, format: { with: VALID_EMAIL_REGEX }
  validates :phone, presence: true, numericality: { only_integer: true }, length: {minimum:9, maximum: 9},
            format: { with: VALID_PHONE_REGEX }
  
  belongs_to :region          

  private
    
  def letter_downcase 
    self.email = email.downcase
    self.first_name = first_name.capitalize
    self.last_name = last_name.capitalize
  end
end
