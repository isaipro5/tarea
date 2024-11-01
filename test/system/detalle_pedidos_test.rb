require "application_system_test_case"

class DetallePedidosTest < ApplicationSystemTestCase
  setup do
    @detalle_pedido = detalle_pedidos(:one)
  end

  test "visiting the index" do
    visit detalle_pedidos_url
    assert_selector "h1", text: "Detalle pedidos"
  end

  test "should create detalle pedido" do
    visit detalle_pedidos_url
    click_on "New detalle pedido"

    fill_in "Id detalle", with: @detalle_pedido.id_detalle
    fill_in "Id pedido", with: @detalle_pedido.id_pedido
    fill_in "Id producto", with: @detalle_pedido.id_producto
    click_on "Create Detalle pedido"

    assert_text "Detalle pedido was successfully created"
    click_on "Back"
  end

  test "should update Detalle pedido" do
    visit detalle_pedido_url(@detalle_pedido)
    click_on "Edit this detalle pedido", match: :first

    fill_in "Id detalle", with: @detalle_pedido.id_detalle
    fill_in "Id pedido", with: @detalle_pedido.id_pedido
    fill_in "Id producto", with: @detalle_pedido.id_producto
    click_on "Update Detalle pedido"

    assert_text "Detalle pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Detalle pedido" do
    visit detalle_pedido_url(@detalle_pedido)
    click_on "Destroy this detalle pedido", match: :first

    assert_text "Detalle pedido was successfully destroyed"
  end
end
