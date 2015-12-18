class OttosMailer < ActionMailer::Base
  logger.debug "////////////////////////////////////////"
  logger.debug "#{Rails.application.secrets.inspect}"
  logger.debug "////////////////////////////////////////"
  default from: Rails.application.secrets[:ottos_email]

  def customer_email (name, phone, email, message)
    @name = name
    @phone = phone
    @email = email
    @message = message

    mail(to: "ottos94030@gmail.com", subject: 'New Message From Customer')
  end
end
