class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def order_confirmation_email(user, order)
    @order = order
    @user = user
    @url = "http://0.0.0.0:3000/"
    mail(to: @user.email, subject: "Your Jungle order ##{@order.id} is confirmed 🌴")
  end
end