class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: ['samiequipo@gmail.com', 'luiscastro@ideall.pt'],
         subject: "You got a new contact!")
  end
end
