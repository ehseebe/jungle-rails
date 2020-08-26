class UserMailer < ApplicationMailer

  def order_confirmation(user, order)
    @order = order
    @user = user
    @url = "http://0.0.0.0:3000/"
    mail(to: user.email, subject: "Your Jungle order ##{order.id} is confirmed 🌴") 
  end
end
