require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "new contact email" do
    # Set up an contact based on the fixture
    contact = contacts(:one)

    # Set up an email using the contact contents
    email = ContactMailer.with(contact: contact).new_order_email

    # Check if the email is sent
    assert_emails 1 do
      email.deliver_now
    end

    # Check the contents are correct
    assert_equal [Rails.application.credentials.iex_client[:gmail_username]], email.from
    assert_equal [Rails.application.credentials.iex_client[:gmail_username]], email.to
    assert_equal "You got a new contact!", email.subject
    assert_match contact.first_name, email.html_part.body.encoded
    assert_match contact.first_name, email.text_part.body.encoded
    assert_match contact.email, email.html_part.body.encoded
    assert_match contact.email, email.text_part.body.encoded
    assert_match contact.phone, email.html_part.body.encoded
    assert_match contact.phone, email.text_part.body.encoded
  end
end
