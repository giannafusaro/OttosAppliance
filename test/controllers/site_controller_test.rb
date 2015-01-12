require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "Home Page" do
    get :home
    assert_response :success
  end

  test "About Page" do
    get :about
    assert_response :success
  end

  test "Services Page" do
    get :services
    assert_response :success
  end

  test "Contact Us Page" do
    get :contact_us
    assert_response :success
  end

  test "Submit Email" do


    assert_difference 'ActionMailer::Base.deliveries.size', +1 do
      post :submit_email, name: "Test Name", phone: "123-456-7890", email: "test@email.com", message: "test message"
    end
    cust_email = ActionMailer::Base.deliveries.last

    assert_equal "New Message From Customer", cust_email.subject
    assert_equal 'services@ottosappliance.com', cust_email.to[0]
    assert_match(/Message From A Customer Via www.ottosappliance.com/, cust_email.body.to_s)
    assert_redirected_to(controller: "site", action: "contact_us")
  end
end
