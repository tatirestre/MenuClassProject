require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "user_new_menu_confirmation" do
    mail = UserMailer.user_new_menu_confirmation
    assert_equal "User new menu confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "user_new_item_confirmation" do
    mail = UserMailer.user_new_item_confirmation
    assert_equal "User new item confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
