require 'minitest/autorun'
require './rest_request3'

class RestRequest < Minitest::Test
  def setup
    @res = TestDB.new
  end

  def test_get_request
    response = @res.users
    assert_equal 200, response
  end

  def test_post_request
    response = @res.new_users(name, age, sex)
    assert_equal 200, response
  end

  def test_delete_request
    id = "-MghSffSIOyC5mBWjUOw"
    response = @res.delete_user(id)
    assert_equal 200, response
  end
end

