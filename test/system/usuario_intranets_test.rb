require "application_system_test_case"

class UsuarioIntranetsTest < ApplicationSystemTestCase
  setup do
    @usuario_intranet = usuario_intranets(:one)
  end

  test "visiting the index" do
    visit usuario_intranets_url
    assert_selector "h1", text: "Usuario intranets"
  end

  test "should create usuario intranet" do
    visit usuario_intranets_url
    click_on "New usuario intranet"

    fill_in "Email", with: @usuario_intranet.email
    fill_in "Id usuario", with: @usuario_intranet.id_usuario
    fill_in "Nombre", with: @usuario_intranet.nombre
    click_on "Create Usuario intranet"

    assert_text "Usuario intranet was successfully created"
    click_on "Back"
  end

  test "should update Usuario intranet" do
    visit usuario_intranet_url(@usuario_intranet)
    click_on "Edit this usuario intranet", match: :first

    fill_in "Email", with: @usuario_intranet.email
    fill_in "Id usuario", with: @usuario_intranet.id_usuario
    fill_in "Nombre", with: @usuario_intranet.nombre
    click_on "Update Usuario intranet"

    assert_text "Usuario intranet was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario intranet" do
    visit usuario_intranet_url(@usuario_intranet)
    click_on "Destroy this usuario intranet", match: :first

    assert_text "Usuario intranet was successfully destroyed"
  end
end
