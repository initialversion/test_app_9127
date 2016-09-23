require 'test_helper'

class FictionalThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fictional_thing = fictional_things(:one)
  end

  test "should get index" do
    get fictional_things_url
    assert_response :success
  end

  test "should get new" do
    get new_fictional_thing_url
    assert_response :success
  end

  test "should create fictional_thing" do
    assert_difference('FictionalThing.count') do
      post fictional_things_url, params: { fictional_thing: { title: @fictional_thing.title } }
    end

    assert_redirected_to fictional_thing_url(FictionalThing.last)
  end

  test "should show fictional_thing" do
    get fictional_thing_url(@fictional_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_fictional_thing_url(@fictional_thing)
    assert_response :success
  end

  test "should update fictional_thing" do
    patch fictional_thing_url(@fictional_thing), params: { fictional_thing: { title: @fictional_thing.title } }
    assert_redirected_to fictional_thing_url(@fictional_thing)
  end

  test "should destroy fictional_thing" do
    assert_difference('FictionalThing.count', -1) do
      delete fictional_thing_url(@fictional_thing)
    end

    assert_redirected_to fictional_things_url
  end
end
