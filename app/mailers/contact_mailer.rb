class ContactMailer < ApplicationMailer
	#Send email
	#Mohammad Shahnawaz
	# 01-02-2021
  def send_contact(contact)
    @contact = contact
    mail to: "info@ajackus.com,railschecker@gmail.com", subject: 'New contact entries posted'
  end
end
