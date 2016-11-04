
Devise.setup do |config|'ead6169e706a9564d562d77020fe3c2a51130ad380cb42b2d05a830181b7519f9d43e87753f456231226a876850a99c3afe9906c0a7d5aef51a840244e8093f4'

  config.mailer_sender = 'no-reply@overtimeapp.herokuapp.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11
'80c95e707d5fd3e3d7ad5ee6eeb8d58fa0f981f5a0012af16d8f88d6de8a6ad178a715b915e6271cb53fa829fa2992201290f6066f15d05afafa8dcda70e62d1'

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

end
