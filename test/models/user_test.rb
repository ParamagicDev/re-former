require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      name: 'konnor', email: 'konnor@example.com',
      password: 'example', password_confirmation: 'example'
    )
  end

  test 'user is valid' do
    assert @user.valid?
  end

  test 'name must not be blank' do
    @user.name = ' ' * 10
    assert_not @user.valid?
  end

  test 'email must not be blank' do
    @user.email = ' ' * 10
    assert_not @user.valid?
  end

  test 'password cannot be blank' do
    @user.password = ' ' * 10
    @user.password_confirmation = ' ' * 10
    assert_not @user.valid?
  end

  test 'password must equal password_confirmation' do
    @user.password = 'Example'
    assert_not @user.valid?
  end
end

