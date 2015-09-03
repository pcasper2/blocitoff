if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.mailgun.org',
    port:           '587',
    authentication: :plain,
    user_name:      ENV['MAILGUN_SMTP_USERNAME'],
    password:       ENV['MAILGUN_SMTP_PASSWORD'],
    domain:         'appb79a8a2e3ddf4e458c4df2e46f5a03df.mailgun.org',
    enable_starttls_auto: true
  }
end