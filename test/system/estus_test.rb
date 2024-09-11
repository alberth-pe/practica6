require "application_system_test_case"

class EstusTest < ApplicationSystemTestCase
  setup do
    @estu = estus(:one)
  end

  test "visiting the index" do
    visit estus_url
    assert_selector "h1", text: "Estus"
  end

  test "should create estu" do
    visit estus_url
    click_on "New estu"

    fill_in "Apellidos", with: @estu.apellidos
    fill_in "Carnet", with: @estu.carnet
    fill_in "Carrera", with: @estu.carrera
    fill_in "Celular", with: @estu.celular
    fill_in "Nacimiento", with: @estu.nacimiento
    fill_in "Nombres", with: @estu.nombres
    click_on "Create Estu"

    assert_text "Estu was successfully created"
    click_on "Back"
  end

  test "should update Estu" do
    visit estu_url(@estu)
    click_on "Edit this estu", match: :first

    fill_in "Apellidos", with: @estu.apellidos
    fill_in "Carnet", with: @estu.carnet
    fill_in "Carrera", with: @estu.carrera
    fill_in "Celular", with: @estu.celular
    fill_in "Nacimiento", with: @estu.nacimiento
    fill_in "Nombres", with: @estu.nombres
    click_on "Update Estu"

    assert_text "Estu was successfully updated"
    click_on "Back"
  end

  test "should destroy Estu" do
    visit estu_url(@estu)
    click_on "Destroy this estu", match: :first

    assert_text "Estu was successfully destroyed"
  end
end
