require "application_system_test_case"

class MailersTest < ApplicationSystemTestCase
  setup do
    @mailer = mailers(:one)
  end

  test "visiting the index" do
    visit mailers_url
    assert_selector "h1", text: "Mailers"
  end

  test "should create mailer" do
    visit mailers_url
    click_on "New mailer"

    fill_in "Usermailer", with: @mailer.UserMailer
    click_on "Create Mailer"

    assert_text "Mailer was successfully created"
    click_on "Back"
  end

  test "should update Mailer" do
    visit mailer_url(@mailer)
    click_on "Edit this mailer", match: :first

    fill_in "Usermailer", with: @mailer.UserMailer
    click_on "Update Mailer"

    assert_text "Mailer was successfully updated"
    click_on "Back"
  end

  test "should destroy Mailer" do
    visit mailer_url(@mailer)
    click_on "Destroy this mailer", match: :first

    assert_text "Mailer was successfully destroyed"
  end
end
