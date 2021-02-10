class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: "samiequipo@gmail.com", subject: "You got a new contact!")
  end
end
