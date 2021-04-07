class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: ['luiscastro@ideall.pt', 'samiequipo@gmail.com'],
         subject: "You got a new contact!")
  end
end
