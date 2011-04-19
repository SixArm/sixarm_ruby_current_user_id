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
  
  def test_current_user_id_before_setting
    assert_nil(current_user_id, "current_user_id is not set, so should be nil")
  end

  def test_current_user_id_equals_return
    assert_equal(ID, current_user_id=ID, "current_user_id is set to #{ID}, so current_user_id should return #{ID}")
  end
  
  def test_current_user_id_round_trip
    current_user_id=ID
    expect=ID
    actual=current_user_id
    assert_equal(expect, actual, "current_user_id")
  end

end

