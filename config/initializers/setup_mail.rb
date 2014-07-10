ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "asciicasts.com",  
  :user_name            => "asciicasts",  
  :password             => "secret",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}  
  
ActionMailer::Base.default_url_options[:host] = "localhost:3000"