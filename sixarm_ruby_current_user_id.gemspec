Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_current_user_id"
  s.summary           = "SixArm Ruby Gem: Ruby On Rails methods to get/set a user in a rails app session"
  s.version           = "1.2.6"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_current_user_id.rb']
  s.test_files        = ['test/sixarm_ruby_current_user_id_test.rb']

end