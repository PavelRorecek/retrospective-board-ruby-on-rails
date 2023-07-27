require "test_helper"

class BoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @column = boards(:one)
  end

  test "should get index" do
    get boards_url
    assert_response :success
  end

  test "should get new" do
    get new_board_url
    assert_response :success
  end

  test "should create board" do
    assert_difference("Board.count") do
      post boards_url, params: { column: { name: @column.name } }
    end

    assert_redirected_to board_url(Board.last)
  end

  test "should show board" do
    get board_url(@column)
    assert_response :success
  end

  test "should get edit" do
    get edit_board_url(@column)
    assert_response :success
  end

  test "should update board" do
    patch board_url(@column), params: { column: { name: @column.name } }
    assert_redirected_to board_url(@column)
  end

  test "should destroy board" do
    assert_difference("Board.count", -1) do
      delete board_url(@column)
    end

    assert_redirected_to boards_url
  end
end
