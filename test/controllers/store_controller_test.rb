require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    # Look at the index page and see if it has 4 side column links
    assert_select '#columns #side a', minimum: 4
    assert_select '.price', /\$[,\d]+\.\d\d/
    assert_select 'h3', 'Programming Ruby 1.9'
  end

end
