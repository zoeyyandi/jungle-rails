class UserMailer < ApplicationMailer
    
    default from: 'no-reply@jungle.com'
    
    def email(user, order)
        @user = user
        @order = order
        mail(to: @user.email,
             subject: 'Order Confirmation, order #' + @order.id.to_s)
    end
end
