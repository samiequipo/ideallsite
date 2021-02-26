class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      body: message,
      from: phone_number_twilio,
      to: phone_number
    })
  end

  private 
    
    def phone_number_twilio
      Rails.application.credentials.twilio[:phone_number_twilio]
    end
    
    def phone_number
      Rails.application.credentials.twilio[:phone_number]
    end
end


