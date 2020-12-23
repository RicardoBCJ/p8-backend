require 'test_helper'

class HelpersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helper = helpers(:one)
  end

  test "should get index" do
    get helpers_url, as: :json
    assert_response :success
  end

  test "should create helper" do
    assert_difference('Helper.count') do
      post helpers_url, params: { helper: { full_at: @helper.full_at, help_request_id: @helper.help_request_id, participants: @helper.participants } }, as: :json
    end

    assert_response 201
  end

  test "should show helper" do
    get helper_url(@helper), as: :json
    assert_response :success
  end

  test "should update helper" do
    patch helper_url(@helper), params: { helper: { full_at: @helper.full_at, help_request_id: @helper.help_request_id, participants: @helper.participants } }, as: :json
    assert_response 200
  end

  test "should destroy helper" do
    assert_difference('Helper.count', -1) do
      delete helper_url(@helper), as: :json
    end

    assert_response 204
  end
end
