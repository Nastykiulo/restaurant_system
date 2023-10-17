require 'test_helper'

class RestaurantWorkingHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_working_hour = restaurant_working_hours(:one)
  end

  test "should get index" do
    get restaurant_working_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_working_hour_url
    assert_response :success
  end

  test "should create restaurant_working_hour" do
    assert_difference('RestaurantWorkingHour.count') do
      post restaurant_working_hours_url, params: { restaurant_working_hour: { closing_time: @restaurant_working_hour.closing_time, day_id: @restaurant_working_hour.day_id, opening_time: @restaurant_working_hour.opening_time, restaurant_id: @restaurant_working_hour.restaurant_id } }
    end

    assert_redirected_to restaurant_working_hour_url(RestaurantWorkingHour.last)
  end

  test "should show restaurant_working_hour" do
    get restaurant_working_hour_url(@restaurant_working_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_working_hour_url(@restaurant_working_hour)
    assert_response :success
  end

  test "should update restaurant_working_hour" do
    patch restaurant_working_hour_url(@restaurant_working_hour), params: { restaurant_working_hour: { closing_time: @restaurant_working_hour.closing_time, day_id: @restaurant_working_hour.day_id, opening_time: @restaurant_working_hour.opening_time, restaurant_id: @restaurant_working_hour.restaurant_id } }
    assert_redirected_to restaurant_working_hour_url(@restaurant_working_hour)
  end

  test "should destroy restaurant_working_hour" do
    assert_difference('RestaurantWorkingHour.count', -1) do
      delete restaurant_working_hour_url(@restaurant_working_hour)
    end

    assert_redirected_to restaurant_working_hours_url
  end
end
