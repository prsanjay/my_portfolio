class ContactMe < ApplicationMailer

	def mail_from_user(user)
    @name = user.name
    @email = user.email
    @comment = user.comment
    mail(from: @email)
    mail(to: 'lnvg530@gmail.com', subject: 'Mail from portfolio')
  end
end
