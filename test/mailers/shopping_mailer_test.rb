require 'test_helper'

class ShoppingMailerTest < ActionMailer::TestCase
  test "list" do
    mail = ShoppingMailer.list
    assert_equal "List", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
