class ContactMe < ApplicationMailer

	def mail_from_user(user)
    @user = user
    mail(from: @user.email)
    mail(to: 'lnvg530@gmail.com', subject: 'Mail from portfolio')
  end
end
