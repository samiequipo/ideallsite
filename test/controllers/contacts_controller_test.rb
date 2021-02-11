require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get contacts__form_url
    assert_response :success
  end

  test "should get _contact_result" do
    get contacts__contact_result_url
    assert_response :success
  end
end
