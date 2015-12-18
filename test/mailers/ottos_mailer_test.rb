require 'test_helper'

class OttosMailerTest < ActionMailer::TestCase
  test "customer_email" do

    # Send the email, then test that it got queued
    email = OttosMailer.customer_email('test name','123-456-7890', 'test@email.com', 'test message')

    # Test the body of the sent email contains what we expect it to
    assert_equal Rails.application.secrets[:ottos_email], email.from[0]
    assert_equal "ottos94030@gmail.com", email.to[0]
    assert_equal 'New Message From Customer', email.subject
  end
end
