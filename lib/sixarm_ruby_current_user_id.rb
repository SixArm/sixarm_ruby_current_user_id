=begin rdoc

= SixArm Ruby Gem: CurrentUserId module with current_user_id methods

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

Get and set the current user id in the Rails session array.

We get and set the user id, instead of the entire user model,
because this is typically faster for typical user models.

=end


module CurrentUserId

 # Get the current user id in the Rails session array

 def current_user_id
  session[:current_user_id]
 end


 # Set the current user id in the Rails session array

 def current_user_id=(id)
  session[:current_user_id]=id
 end

end
