require "application_system_test_case"

class ToppingsTest < ApplicationSystemTestCase
  setup do
    @topping = toppings(:one)
  end

  test "visiting the index" do
    visit toppings_url
    assert_selector "h1", text: "Toppings"
  end

  test "creating a Topping" do
    visit toppings_url
    click_on "New Topping"

    fill_in "Available", with: @topping.available
    fill_in "Name", with: @topping.name
    click_on "Create Topping"

    assert_text "Topping was successfully created"
    click_on "Back"
  end

  test "updating a Topping" do
    visit toppings_url
    click_on "Edit", match: :first

    fill_in "Available", with: @topping.available
    fill_in "Name", with: @topping.name
    click_on "Update Topping"

    assert_text "Topping was successfully updated"
    click_on "Back"
  end

  test "destroying a Topping" do
    visit toppings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Topping was successfully destroyed"
  end
end
