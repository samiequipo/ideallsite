class ContactMailer < ApplicationMailer
  default :from => 'any_from_address@example.com'

  def new_contact_email
    @contact = params[:contact]

    mail(to: ['samiequipo@gmail.com', 'samiequipo@hotmail.com'], subject: "You got a new contact!")
  end
end
