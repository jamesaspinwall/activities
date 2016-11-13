require 'test_helper'

class UpworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upwork = upworks(:one)
  end

  test "should get index" do
    get upworks_url
    assert_response :success
  end

  test "should get new" do
    get new_upwork_url
    assert_response :success
  end

  test "should create upwork" do
    assert_difference('Upwork.count') do
      post upworks_url, params: { upwork: { country_id: @upwork.country_id, hours: @upwork.hours, jobs: @upwork.jobs, name: @upwork.name, rate: @upwork.rate, skill_id: @upwork.skill_id, top: @upwork.top } }
    end

    assert_redirected_to upwork_url(Upwork.last)
  end

  test "should show upwork" do
    get upwork_url(@upwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_upwork_url(@upwork)
    assert_response :success
  end

  test "should update upwork" do
    patch upwork_url(@upwork), params: { upwork: { country_id: @upwork.country_id, hours: @upwork.hours, jobs: @upwork.jobs, name: @upwork.name, rate: @upwork.rate, skill_id: @upwork.skill_id, top: @upwork.top } }
    assert_redirected_to upwork_url(@upwork)
  end

  test "should destroy upwork" do
    assert_difference('Upwork.count', -1) do
      delete upwork_url(@upwork)
    end

    assert_redirected_to upworks_url
  end
end
