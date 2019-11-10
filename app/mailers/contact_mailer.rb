class ContactMailer < ApplicationMailer
    
    default from: 'contact'
 
    def contact_mail(name,email,content)
        @name = name
        @email = email
        @content = content
        mail(to: "locurabiz3@gmail.com", subject: '問い合わせ')
    end
end
