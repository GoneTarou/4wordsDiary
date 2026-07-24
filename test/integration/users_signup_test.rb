require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "valid signup" do
    get new_user_path

    assert_difference("User.count", 1) do
      post users_path, params: {
        user: {
          nickname: "sleepyslug",
          email_address: "test@example.com",
          password: "password",
          password_confirmation: "password"
        }
      }
    end

    assert_redirected_to root_path
  end
end
