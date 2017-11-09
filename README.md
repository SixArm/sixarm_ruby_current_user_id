# SixArm.com → Ruby → <br> CurrentUserId module for Rails sessions

* Doc: <http://sixarm.com/sixarm_ruby_current_user_id/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_current_user_id>
* Repo: <http://github.com/sixarm/sixarm_ruby_current_user_id>
<!--header-shut-->

## Introduction

Get and set the current user id in the Rails session array.

When you set the current user id:
 - this sets session[:current_user_id] to the id
 - this sets @current_user_id to the id

For docs go to <http://sixarm.com/sixarm_ruby_current_user_id/doc>

Want to help? We're happy to get pull requests.


<!--install-opent-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_current_user_id

Or add this to your Gemfile:

    gem 'sixarm_ruby_current_user_id'

### Require

To require the gem in your code:

    require 'sixarm_ruby_current_user_id'

<!--install-shut-->


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
