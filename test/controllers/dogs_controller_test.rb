require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url, as: :json
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { birthdate: @dog.birthdate, color: @dog.color, description: @dog.description, gender: @dog.gender, name: @dog.name, weight: @dog.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show dog" do
    get dog_url(@dog), as: :json
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { birthdate: @dog.birthdate, color: @dog.color, description: @dog.description, gender: @dog.gender, name: @dog.name, weight: @dog.weight } }, as: :json
    assert_response 200
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog), as: :json
    end

    assert_response 204
  end
end
