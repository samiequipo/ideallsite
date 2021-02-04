require 'test_helper'

class PrivacyControllerTest < ActionDispatch::IntegrationTest
  test "should get politica_privacidade" do
    get privacy_politica_privacidade_url
    assert_response :success
  end

end
