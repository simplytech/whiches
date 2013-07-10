# -*- encoding: utf-8 -*-
require File.expand_path('../lib/whiches/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alain Achkar"]
  gem.email         = ["aa@simplytech.com"]
  
  gem.summary       = 'Find executables in all the paths in $PATH.'
  gem.description   = <<-EOF
    Cross-platform way of finding executables in all the paths in $PATH.
    
    This is similar to the Unix 'which' command, however, instead of finding the first
    occurence of the executable in $PATH, it finds all occurences in $PATH.
    This could be useful if you installed something that modified your PATH and now you're
    executing a different version but can't figure out what happened.
    Example:
    On OS X, OpenSSL is installed in /usr/bin/openssl
      % which openssl
      ==> /usr/bin/openssl
    After installing PostgreSQL:
      % which openssl
      ==> /Applications/Postgres.app/Contents/MacOS/bin/openssl
    If you're trying to diagnose what happened, you can use:
      % whiches openssl
      ==>
      [
          [0] "/Applications/Postgres.app/Contents/MacOS/bin/openssl",
          [1] "/usr/bin/openssl"
      ]  
    This will show you that the first one that is found in the PATH is the one from Postgres,
    so if you want to get back your original one, you have to modify your PATH accordingly.  
  EOF
  gem.homepage      = "https://github.com/simplytech/whiches"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "whiches"
  gem.require_paths = ["lib"]
  gem.version       = Whiches::VERSION
end
