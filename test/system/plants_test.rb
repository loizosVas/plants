require "application_system_test_case"

class PlantsTest < ApplicationSystemTestCase
  setup do
    @plant = plants(:one)
  end

  test "visiting the index" do
    visit plants_url
    assert_selector "h1", text: "Plants"
  end

  test "creating a Plant" do
    visit plants_url
    click_on "New Plant"

    fill_in "Humidity", with: @plant.humidity
    fill_in "Light", with: @plant.light
    fill_in "Location", with: @plant.location
    fill_in "Plant name", with: @plant.plant_name
    fill_in "Soil", with: @plant.soil
    fill_in "Temperature", with: @plant.temperature
    fill_in "Water", with: @plant.water
    click_on "Create Plant"

    assert_text "Plant was successfully created"
    click_on "Back"
  end

  test "updating a Plant" do
    visit plants_url
    click_on "Edit", match: :first

    fill_in "Humidity", with: @plant.humidity
    fill_in "Light", with: @plant.light
    fill_in "Location", with: @plant.location
    fill_in "Plant name", with: @plant.plant_name
    fill_in "Soil", with: @plant.soil
    fill_in "Temperature", with: @plant.temperature
    fill_in "Water", with: @plant.water
    click_on "Update Plant"

    assert_text "Plant was successfully updated"
    click_on "Back"
  end

  test "destroying a Plant" do
    visit plants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plant was successfully destroyed"
  end
end
