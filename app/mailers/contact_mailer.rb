class ContactMailer < ApplicationMailer

  default from: 'contact@coderfactoryacademy.com'

   def send_contact_email(email, message)
     @email = email
     @message = message
     mail(to: 'shadolee@mail.com', subject: 'New message from website') 

   end

 end
