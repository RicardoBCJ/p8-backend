require 'test_helper'

class HelpRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_request = help_requests(:one)
  end

  test "should get index" do
    get help_requests_url, as: :json
    assert_response :success
  end

  test "should create help_request" do
    assert_difference('HelpRequest.count') do
      post help_requests_url, params: { help_request: { address: @help_request.address, date: @help_request.date, description: @help_request.description, helpers: @help_request.helpers, kind: @help_request.kind, latitude: @help_request.latitude, longitude: @help_request.longitude, title: @help_request.title, user_id: @help_request.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show help_request" do
    get help_request_url(@help_request), as: :json
    assert_response :success
  end

  test "should update help_request" do
    patch help_request_url(@help_request), params: { help_request: { address: @help_request.address, date: @help_request.date, description: @help_request.description, helpers: @help_request.helpers, kind: @help_request.kind, latitude: @help_request.latitude, longitude: @help_request.longitude, title: @help_request.title, user_id: @help_request.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy help_request" do
    assert_difference('HelpRequest.count', -1) do
      delete help_request_url(@help_request), as: :json
    end

    assert_response 204
  end
end
