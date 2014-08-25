Jumpup::Heroku.configure do |config|
  config.app = 'khronos_web'
end if Rails.env.development?