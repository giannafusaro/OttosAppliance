require 'test_helper'

class OttosMailerTest < ActionMailer::TestCase
  test "customer_email" do
    # Send the email, then test that it got queued
    email = OttosMailer.customer_email('test name','123-456-7890', 'test@email.com', 'test message')

    # Test the body of the sent email contains what we expect it to
    assert_equal ['services@ottosappliance.com'], email.from
    assert_equal ["services@ottosappliance.com", "tony@ottosappliance.com", "otto@ottosappliance.com", "angelo@ottosappliance.com"], email.to
    assert_equal 'New Message From Customer', email.subject
  end
end
