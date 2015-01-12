class OttosMailer < ActionMailer::Base
  default from: "from@example.com"

  def customer_email (name, phone, email, message)
    @name = name
    @phone = phone
    @email = email
    @message = message

    recipients = ["services@ottosappliance.com", "tony@ottosappliance.com", "otto@ottosappliance.com", "angelo@ottosappliance.com"]
    mail(to: recipients, subject: 'Testing')
  end
end
