require 'test_helper'

class StationsMailerTest < ActionMailer::TestCase
  test "send_station" do
    mail = StationsMailer.send_station
    assert_equal "Send station", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
