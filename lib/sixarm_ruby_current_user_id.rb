# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc 
=end

module CurrentUserId


  # Get the current user id in the Rails session array.
  # Return the session's current user id.

  def current_user_id
    return session[:current_user_id]
  end


  # Set the current user id in the Rails session array.
  # Return the current user id, suitable for chaining.
  
  def current_user_id=(id)
   return session[:current_user_id]=id
  end


end
