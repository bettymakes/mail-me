class ApplicationMailer < ActionMailer::Base
  default from: 'chicken@horse.com'
  layout 'mailer'
end
