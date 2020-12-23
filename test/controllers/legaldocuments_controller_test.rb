require 'test_helper'

class LegaldocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legaldocument = legaldocuments(:one)
  end

  test "should get index" do
    get legaldocuments_url, as: :json
    assert_response :success
  end

  test "should create legaldocument" do
    assert_difference('Legaldocument.count') do
      post legaldocuments_url, params: { legaldocument: { fromuser: @legaldocument.fromuser, image: @legaldocument.image } }, as: :json
    end

    assert_response 201
  end

  test "should show legaldocument" do
    get legaldocument_url(@legaldocument), as: :json
    assert_response :success
  end

  test "should update legaldocument" do
    patch legaldocument_url(@legaldocument), params: { legaldocument: { fromuser: @legaldocument.fromuser, image: @legaldocument.image } }, as: :json
    assert_response 200
  end

  test "should destroy legaldocument" do
    assert_difference('Legaldocument.count', -1) do
      delete legaldocument_url(@legaldocument), as: :json
    end

    assert_response 204
  end
end
