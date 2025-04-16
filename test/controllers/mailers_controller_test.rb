require "test_helper"

class MailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mailer = mailers(:one)
  end

  test "should get index" do
    get mailers_url
    assert_response :success
  end

  test "should get new" do
    get new_mailer_url
    assert_response :success
  end

  test "should create mailer" do
    assert_difference("Mailer.count") do
      post mailers_url, params: { mailer: { UserMailer: @mailer.UserMailer } }
    end

    assert_redirected_to mailer_url(Mailer.last)
  end

  test "should show mailer" do
    get mailer_url(@mailer)
    assert_response :success
  end

  test "should get edit" do
    get edit_mailer_url(@mailer)
    assert_response :success
  end

  test "should update mailer" do
    patch mailer_url(@mailer), params: { mailer: { UserMailer: @mailer.UserMailer } }
    assert_redirected_to mailer_url(@mailer)
  end

  test "should destroy mailer" do
    assert_difference("Mailer.count", -1) do
      delete mailer_url(@mailer)
    end

    assert_redirected_to mailers_url
  end
end
