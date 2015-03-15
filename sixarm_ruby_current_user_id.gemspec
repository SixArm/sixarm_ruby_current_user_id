# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_current_user_id"
  s.summary           = "SixArm.com » Ruby » CurrentUserId module for Rails sessions"
  s.version           = "1.4.2"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/opt/keys/sixarm/sixarm-rsa-4096-x509-20145314-private.pem'
  s.cert_chain        = ['/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true

  top_files           = [".gemtest", "CHANGELOG.txt", "INSTALL.txt", "LICENSE.txt", "Rakefile", "README.md", "VERSION"]
  lib_files           = ["lib/#{s.name}.rb"]
  test_files          = ["test/#{s.name}_test.rb"]

  s.files             = top_files + lib_files + test_files
  s.test_files        = test_files

end