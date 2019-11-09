class HomeController < ApplicationController
    
    def lp
    end
    
    def contact
        # ContactMailer.contact_mail.deliver_now
        @contact = Contact.new
    end


    def contact_send
        
        @name = contact_params[:name]
        @email = contact_params[:email]
        @content = contact_params[:content]
        
        ContactMailer.contact_mail(@name,@email,@content).deliver_now        
        redirect_to '/contact'
    end


    private
    def contact_params
        params.require(:contact).permit(:name,:email,:content)
    end
end
