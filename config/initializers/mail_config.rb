if Rails.env.production?
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'yugojinu5@gmai.com',
  password: '11L603002',
  authentication: 'plain',
  enable_starttls_auto: true
}
elsif Rails.env.development?
  # 開発環境
  ActionMailer::Base.delivery_method = :letter_opener
else
  # テスト環境
  ActionMailer::Base.delivery_method = :test
end