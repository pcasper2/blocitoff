if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.mailgun.org',
    port:           '587',
    authentication: :plain,
    user_name:      ENV['MAILGUN_SMTP_USERNAME'],
    password:       ENV['MAILGUN_SMTP_PASSWORD'],
    domain:         'sandboxc533665cb18a494bb7ed47b99cb6ee4c.mailgun.org',
    enable_starttls_auto: true
  }
end