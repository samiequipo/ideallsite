require 'test_helper'

class Other::ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get meo" do
    get other_services_meo_url
    assert_response :success
  end

  test "should get nos" do
    get other_services_nos_url
    assert_response :success
  end

  test "should get vodafone" do
    get other_services_vodafone_url
    assert_response :success
  end

  test "should get nowo" do
    get other_services_nowo_url
    assert_response :success
  end

  test "should get family" do
    get other_services_family_url
    assert_response :success
  end

  test "should get business" do
    get other_services_business_url
    assert_response :success
  end

  test "should get gamers" do
    get other_services_gamers_url
    assert_response :success
  end

end
