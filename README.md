# Whiches

Find executables in all the paths in $PATH.

  Cross-platform way of finding executables in all the paths in $PATH.
  
  This is similar to the Unix 'which' command, however, instead of finding the first
  occurence of the executable in $PATH, it finds all occurences in $PATH.  This could be useful if you installed something that modified your PATH and now you're executing a different version but can't figure out what happened.

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
    
  This will show you that the first one that is found in the PATH is the one from Postgres, so if you want to get back your original one, you have to modify your PATH accordingly.  

## URL 
<https://github.com/simplytech/whiches>

## Installation

Add this line to your application's Gemfile:

    gem 'whiches'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whiches

## Usage

whiches [executables]

## License

Copyright (c) 2013 Alain Achkar

MIT License

See the LICENSE file in the source code.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
