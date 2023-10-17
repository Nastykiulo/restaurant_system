require "application_system_test_case"

class RestaurantWorkingHoursTest < ApplicationSystemTestCase
  setup do
    @restaurant_working_hour = restaurant_working_hours(:one)
  end

  test "visiting the index" do
    visit restaurant_working_hours_url
    assert_selector "h1", text: "Restaurant Working Hours"
  end

  test "creating a Restaurant working hour" do
    visit restaurant_working_hours_url
    click_on "New Restaurant Working Hour"

    fill_in "Closing time", with: @restaurant_working_hour.closing_time
    fill_in "Day", with: @restaurant_working_hour.day_id
    fill_in "Opening time", with: @restaurant_working_hour.opening_time
    fill_in "Restaurant", with: @restaurant_working_hour.restaurant_id
    click_on "Create Restaurant working hour"

    assert_text "Restaurant working hour was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant working hour" do
    visit restaurant_working_hours_url
    click_on "Edit", match: :first

    fill_in "Closing time", with: @restaurant_working_hour.closing_time
    fill_in "Day", with: @restaurant_working_hour.day_id
    fill_in "Opening time", with: @restaurant_working_hour.opening_time
    fill_in "Restaurant", with: @restaurant_working_hour.restaurant_id
    click_on "Update Restaurant working hour"

    assert_text "Restaurant working hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant working hour" do
    visit restaurant_working_hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant working hour was successfully destroyed"
  end
end
