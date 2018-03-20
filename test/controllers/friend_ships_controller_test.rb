require 'test_helper'

class FriendShipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_ship = friend_ships(:one)
  end

  test "should get index" do
    get friend_ships_url, as: :json
    assert_response :success
  end

  test "should create friend_ship" do
    assert_difference('FriendShip.count') do
      post friend_ships_url, params: { friend_ship: { dog_id: @friend_ship.dog_id, friend_id: @friend_ship.friend_id } }, as: :json
    end

    assert_response 201
  end

  test "should show friend_ship" do
    get friend_ship_url(@friend_ship), as: :json
    assert_response :success
  end

  test "should update friend_ship" do
    patch friend_ship_url(@friend_ship), params: { friend_ship: { dog_id: @friend_ship.dog_id, friend_id: @friend_ship.friend_id } }, as: :json
    assert_response 200
  end

  test "should destroy friend_ship" do
    assert_difference('FriendShip.count', -1) do
      delete friend_ship_url(@friend_ship), as: :json
    end

    assert_response 204
  end
end
