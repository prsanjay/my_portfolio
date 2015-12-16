class ContactMe < ApplicationMailer

	def mail_from_user(name,email,comment)
    @name = name
    @email = email
    @comment = comment
    mail(from: @email)
    mail(to: 'lnvg530@gmail.com', subject: 'Mail from portfolio')
  end
end
