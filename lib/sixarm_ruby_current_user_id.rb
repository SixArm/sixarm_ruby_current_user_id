# -*- coding: utf-8 -*-
=begin rdoc
Please see README.rdoc
=end

module CurrentUserId


  # Get the current user id in the Rails session array.
  #
  # The current user id is memoized as @current_user_id.
  # To reload, pass :reload => true
  #
  # Return the session's current user id.

  def current_user_id(ops={})
    if ops[:reload] then @current_user_id=nil end
    @current_user_id ||= session[:current_user_id]
  end


  # Is there a current user id in the Rails session array?

  def current_user_id?
    return session[:current_user_id] ? true : false
  end


  # Set the current user id in the Rails session array.
  # Return the current user id, suitable for chaining.
  
  def current_user_id=(id)
    @curent_user_id=session[:current_user_id]=id
  end


end
