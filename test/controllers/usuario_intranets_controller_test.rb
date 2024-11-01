require "test_helper"

class UsuarioIntranetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_intranet = usuario_intranets(:one)
  end

  test "should get index" do
    get usuario_intranets_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_intranet_url
    assert_response :success
  end

  test "should create usuario_intranet" do
    assert_difference("UsuarioIntranet.count") do
      post usuario_intranets_url, params: { usuario_intranet: { email: @usuario_intranet.email, id_usuario: @usuario_intranet.id_usuario, nombre: @usuario_intranet.nombre } }
    end

    assert_redirected_to usuario_intranet_url(UsuarioIntranet.last)
  end

  test "should show usuario_intranet" do
    get usuario_intranet_url(@usuario_intranet)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_intranet_url(@usuario_intranet)
    assert_response :success
  end

  test "should update usuario_intranet" do
    patch usuario_intranet_url(@usuario_intranet), params: { usuario_intranet: { email: @usuario_intranet.email, id_usuario: @usuario_intranet.id_usuario, nombre: @usuario_intranet.nombre } }
    assert_redirected_to usuario_intranet_url(@usuario_intranet)
  end

  test "should destroy usuario_intranet" do
    assert_difference("UsuarioIntranet.count", -1) do
      delete usuario_intranet_url(@usuario_intranet)
    end

    assert_redirected_to usuario_intranets_url
  end
end
