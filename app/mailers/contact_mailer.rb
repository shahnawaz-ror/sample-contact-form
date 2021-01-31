class ContactMailer < ApplicationMailer
	#Send email
  def send_contact(contact)
    @greeting = "Hi"
    @contact = contact
    debugger
    mail to: "info@ajackus.com,railschecker@gmail.com", subject: 'New contact entries posted'
  end
end
