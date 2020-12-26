require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:drew)
  end

  test 'user is valid' do
    assert @user.valid?
  end
end
