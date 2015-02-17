class UserMailer < ActionMailer::Base
  default from: 'handledapp@gmail.com'

  def welcome_email(user)
    @attorney = user
    @url  = 'http://handledapp-dev.herokuapp.com/login'
    email_with_name = %("#{@attorney.name}" <#{@attorney.email}>)
    mail(to: @attorney.email, subject: 'Thank You for Registering with Handled')
  end

  def registration_email(user)
    @user = user
    @url  = 'http://handledapp-dev.herokuapp.com'
    mail(:to => 'astridwcountee@gmail.com', :subject => "New User created please review and enable.")
  end
end
