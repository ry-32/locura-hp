class ContactMailer < ApplicationMailer
    
    default from: 'aryoma409@gmail.com'
 
    def contact_mail(name,email,content)
        @name = name
        @email = email
        @content = content
        mail(to: "aryoma409@gmail.com", subject: '問い合わせ')
    end
end
