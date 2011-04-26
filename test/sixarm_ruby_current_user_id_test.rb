# -*- coding: utf-8 -*-
require 'test/unit'
require 'sixarm_ruby_current_user_id'
#require 'simplecov'
#SimpleCov.start

class Testing < Test::Unit::TestCase

  # Mock session
  def session
    return @session||={}
  end

  include CurrentUserId

  ID=1234

  def test_current_user_id_default_is_nil
    assert_nil(current_user_id, "current_user_id is not set, so current_user_id should be nil")
  end

  def test_current_user_id_round_trip
    self.current_user_id=ID
    assert_equal(ID, current_user_id, "current_user_id is set, so current_user_id should be an id")
  end

  def test_current_user_id_memoize
    self.current_user_id=ID
    session[:current_user_id]=ID+1
    assert_equal(ID, current_user_id, "current_user_id is memoized, so current_user_id should be an id")    
  end

  def test_current_user_id_reload_false
    self.current_user_id=ID
    session[:current_user_id]=ID+1    
    assert_equal(ID, current_user_id(:reload=>false), "current_user_id reload => false, so current_user_id should be an id")    
  end

  def test_current_user_id_reload_true
    self.current_user_id=ID
    session[:current_user_id]=ID+1    
    assert_equal(ID+1, current_user_id(:reload=>true), "current_user_id reload => true, so current_user_id should be an id")    
  end
    
  def test_current_user_id_question_is_false
    assert_equal(false, current_user_id?, "current_user_id is not set, so current_user_id? should be false")
  end

  def test_current_user_id_question_is_true
    self.current_user_id=ID
    assert_equal(true, current_user_id?, "current_user_id is set, so current_user_id? should be true")
  end

end

