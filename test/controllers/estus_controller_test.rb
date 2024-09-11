require "test_helper"

class EstusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estu = estus(:one)
  end

  test "should get index" do
    get estus_url
    assert_response :success
  end

  test "should get new" do
    get new_estu_url
    assert_response :success
  end

  test "should create estu" do
    assert_difference("Estu.count") do
      post estus_url, params: { estu: { apellidos: @estu.apellidos, carnet: @estu.carnet, carrera: @estu.carrera, celular: @estu.celular, nacimiento: @estu.nacimiento, nombres: @estu.nombres } }
    end

    assert_redirected_to estu_url(Estu.last)
  end

  test "should show estu" do
    get estu_url(@estu)
    assert_response :success
  end

  test "should get edit" do
    get edit_estu_url(@estu)
    assert_response :success
  end

  test "should update estu" do
    patch estu_url(@estu), params: { estu: { apellidos: @estu.apellidos, carnet: @estu.carnet, carrera: @estu.carrera, celular: @estu.celular, nacimiento: @estu.nacimiento, nombres: @estu.nombres } }
    assert_redirected_to estu_url(@estu)
  end

  test "should destroy estu" do
    assert_difference("Estu.count", -1) do
      delete estu_url(@estu)
    end

    assert_redirected_to estus_url
  end
end
