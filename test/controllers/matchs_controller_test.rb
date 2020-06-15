require 'test_helper'

class MatchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matchs_index_url
    assert_response :success
  end

end
