# SixArm.com » Ruby » <br> CurrentUserId module for Rails sessions

* Doc: <http://sixarm.com/sixarm_ruby_current_user_id/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_current_user_id>
* Repo: <http://github.com/sixarm/sixarm_ruby_current_user_id>
* Email: Joel Parker Henderson, <joel@sixarm.com>

## Introduction

Get and set the current user id in the Rails session array.

When you set the current user id:
 - this sets session[:current_user_id] to the id
 - this sets @current_user_id to the id

For docs go to <http://sixarm.com/sixarm_ruby_current_user_id/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_current_user_id

Bundler:

    gem "sixarm_ruby_current_user_id", "~>1.4.2"

Require:

    require "sixarm_ruby_current_user_id"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_current_user_id --trust-policy HighSecurity


## Example code

    self.current_user_id = 1
    #=> @current_user_id = session[:current_user_id] = 1


## Example controller

    class MyController < ApplicationController

      def sign_in(user)
        self.current_user_id = user.id
      end

      def sign_out
        self.current_user_id = nil
      end

      def is_anyone_using_this?
        current_user_id?
      end

    end


## Example of reloading

For fast speed, we memoize the current_user_id: 
we use the fast instance variable @current_user_id
rather than the slower session[:current_user_id].

To reload @current_user_id from session[:current_user_id], 
we use the :reload parameter like this:

    current_user_id(:reload => true)


## Why use the self prefix?

When we set variables, we must use the "self" prefix because Ruby uses this to do method dispatch.

Right:

    self.current_user_id = 1

Wrong:

    current_user_id = 1








## Changes

* 2012-03-14 1.4.2 Update docs, tests
* 2011-04-25 1.4.2 Add better memoize and fix bug in current_user_id text
* 2011-04-25 1.4.0 Add memoize and :reload => true
* 2011-04-22 1.3.4 Add self to protect from local variable masking
* 2011-04-19 1.3.2 Bump to match sixarm_ruby_current_user gem
* 2011-04-18 1.3.0 Public release of version for Ruby 1.9.2 and Rails 3.0.5
## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2013 Joel Parker Henderson
