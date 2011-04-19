# -*- coding: utf-8 -*-
require 'test/unit'
require 'sixarm_ruby_current_user_id'
require 'simplecov'
SimpleCov.start

class Testing < Test::Unit::TestCase

  include CurrentUserId

  def session
    @session||=Hash.new
  end

  ID=1234
  
  def test_current_user_id_default_is_nil
    assert_nil(self.current_user_id, "current_user_id is not set, so current_user_id should be nil")
  end

  def test_current_user_id_round_trip
    self.current_user_id=ID
    assert_equal(ID, self.current_user_id, "current_user_id is set, so current_user_id should be an id")
  end

  def test_current_user_id_question_is_false
    assert_equal(false, self.current_user_id?, "current_user_id is not set, so current_user_id? should be false")
  end

  def test_current_user_id_question_is_true
    self.current_user_id=ID
    assert_equal(true, self.current_user_id?, "current_user_id is set, so current_user_id? should be true")
  end
  
end

