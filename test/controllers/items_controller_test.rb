require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test 'index' do
    get index
    assert_response :success
  end
end
