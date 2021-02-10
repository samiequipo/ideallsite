# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def new_contact_email

    # Set up a temporary contact for the preview
    contact = Contact.new(first_name: "Joe Smith", email: "joe@gmail.com", phone: "090777788", last_name: "I want to place an contact!")

    ContactMailer.with(contact: contact).new_contact_email
  end
end
