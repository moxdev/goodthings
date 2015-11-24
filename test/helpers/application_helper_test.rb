require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
    include Devise::TestHelpers
  test "full title helper" do
    assert_equal full_title,         "Good Things"
    assert_equal full_title("Help"), "Help | Good Things"
    assert_equal full_title("About"), "About | Good Things"
    assert_equal full_title("Contact"), "Contact | Good Things"
    assert_equal full_title("Signup"), "Signup | Good Things"
    assert_equal full_title("Developer"), "Developer | Good Things"
    assert_equal full_title("Terms"), "Terms | Good Things"
  end
end