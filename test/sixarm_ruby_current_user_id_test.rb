require 'test/unit'
require 'sixarm_ruby_current_user_id'

class Testing < Test::Unit::TestCase

 include CurrentUserId

 def session
  @session||=Hash.new
 end

 def test_without_current_user_id
  assert_not_nil(session,"session")
  assert_nil(current_user_id,"current_user_id")
 end

 def test_id
  assert_not_nil(session,"session")
  id=1234
  current_user_id=1234
  out=current_user_id
  assert_equal(id,out,"id:#{id}, out:#{out}")
 end

end

