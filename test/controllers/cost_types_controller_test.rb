require "test_helper"

class CostTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cost_type = cost_types(:one)
  end

  test "should get index" do
    get cost_types_url
    assert_response :success
  end

  test "should get new" do
    get new_cost_type_url
    assert_response :success
  end

  test "should create cost_type" do
    assert_difference("CostType.count") do
      post cost_types_url, params: { cost_type: { description: @cost_type.description, name: @cost_type.name } }
    end

    assert_redirected_to cost_type_url(CostType.last)
  end

  test "should show cost_type" do
    get cost_type_url(@cost_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_cost_type_url(@cost_type)
    assert_response :success
  end

  test "should update cost_type" do
    patch cost_type_url(@cost_type), params: { cost_type: { description: @cost_type.description, name: @cost_type.name } }
    assert_redirected_to cost_type_url(@cost_type)
  end

  test "should destroy cost_type" do
    assert_difference("CostType.count", -1) do
      delete cost_type_url(@cost_type)
    end

    assert_redirected_to cost_types_url
  end
end
