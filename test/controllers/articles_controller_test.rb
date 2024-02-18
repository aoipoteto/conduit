require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "test_move" do
    get articles_path
    assert_response :success
  end
end


