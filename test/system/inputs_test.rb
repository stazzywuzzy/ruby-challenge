require "application_system_test_case"

class InputsTest < ApplicationSystemTestCase
  setup do
    @input = inputs(:one)
    sign_in users(:regular)
    @input_invalid = inputs(:input_invalid)
  end

  test "creating an Input -> success" do
    visit inputs_url
    click_on "New Input"

    fill_in "Number", with: @input.number
    click_on "Create Input"

    assert_text "Input was successfully created"
    click_on "Back"
  end

  test "destroying an Input -> success" do
    visit inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Input was successfully deleted."
  end

  test "validation input number -> success" do
    visit inputs_url
    click_on "New Input"

    fill_in "Number", with: @input_invalid.number
    click_on "Create Input"

    assert_no_text 

  end

end
