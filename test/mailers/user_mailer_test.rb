require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "matched" do
    mail = UserMailer.welcome
    assert_equal "matched", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
